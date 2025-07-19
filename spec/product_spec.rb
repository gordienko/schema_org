# frozen_string_literal: true

RSpec.describe SchemaOrg::Product do
  describe '#initialize' do
    it 'sets the default @type to Product' do
      aggregate_offer = SchemaOrg::AggregateOffer.new(
        lowPrice: 100,
        priceCurrency: 'USD'
      )
      product = SchemaOrg::Product.new(
        name: 'Test Product',
        url: 'https://example.com/product',
        offers: aggregate_offer
      )
      expect(product.to_h[:@type]).to eq('Product')
    end

    it 'assigns all required attributes correctly' do
      aggregate_offer = SchemaOrg::AggregateOffer.new(
        lowPrice: 500,
        priceCurrency: 'USD'
      )
      attributes = {
        name: 'Laptop',
        url: 'https://example.com/laptop',
        offers: aggregate_offer
      }
      product = SchemaOrg::Product.new(attributes)
      expect(product.to_h[:name]).to eq(attributes[:name])
      expect(product.to_h[:url]).to eq(attributes[:url])
      expect(product.to_h[:offers]).to eq(aggregate_offer.to_h)
    end

    it 'assigns optional attributes when provided' do
      aggregate_offer = SchemaOrg::AggregateOffer.new(
        lowPrice: 300,
        priceCurrency: 'USD'
      )
      attributes = {
        name: 'Smartphone',
        url: 'https://example.com/smartphone',
        description: 'Latest model with great features',
        image: ['https://example.com/image1.jpg', 'https://example.com/image2.jpg'],
        offers: aggregate_offer
      }
      product = SchemaOrg::Product.new(attributes)

      expect(product.to_h[:description]).to eq(attributes[:description])
      expect(product.to_h[:image]).to eq(attributes[:image])
    end

    it 'does not include optional attributes if they are not provided' do
      aggregate_offer = SchemaOrg::AggregateOffer.new(
        lowPrice: 150,
        priceCurrency: 'USD'
      )
      product = SchemaOrg::Product.new(
        name: 'Tablet',
        url: 'https://example.com/tablet',
        offers: aggregate_offer
      )
      expect(product.to_h.keys).not_to include(:description, :image)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag with required attributes' do
      aggregate_offer = SchemaOrg::AggregateOffer.new(
        lowPrice: 1200,
        priceCurrency: 'USD'
      )
      product = SchemaOrg::Product.new(
        name: 'Smart TV',
        url: 'https://example.com/smart-tv',
        offers: aggregate_offer
      )

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'Product',
        name: 'Smart TV',
        url: 'https://example.com/smart-tv',
        offers: aggregate_offer.to_h.transform_keys(&:to_s)
      }

      actual_data = JSON.parse(product.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end

    it 'generates JSON-LD with all attributes when provided' do
      aggregate_offer = SchemaOrg::AggregateOffer.new(
        lowPrice: 600,
        priceCurrency: 'EUR'
      )
      attributes = {
        name: 'Headphones',
        url: 'https://example.com/headphones',
        description: 'Noise-cancelling over-ear headphones',
        image: ['https://example.com/headphones1.jpg', 'https://example.com/headphones2.jpg'],
        offers: aggregate_offer
      }
      product = SchemaOrg::Product.new(attributes)

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'Product',
        name: 'Headphones',
        url: 'https://example.com/headphones',
        description: 'Noise-cancelling over-ear headphones',
        image: ['https://example.com/headphones1.jpg', 'https://example.com/headphones2.jpg'],
        offers: aggregate_offer.to_h.transform_keys(&:to_s)
      }

      actual_data = JSON.parse(product.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end
  end
end
