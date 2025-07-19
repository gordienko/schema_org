# frozen_string_literal: true

RSpec.describe SchemaOrg::Offer do
  describe '#initialize' do
    it 'sets the default @type to Offer' do
      offer = SchemaOrg::Offer.new(priceCurrency: 'USD', price: 100)
      expect(offer.to_h[:@type]).to eq('Offer')
    end

    it 'assigns all required attributes correctly' do
      attributes = {
        priceCurrency: 'USD',
        price: 500
      }
      offer = SchemaOrg::Offer.new(attributes)

      expect(offer.to_h[:priceCurrency]).to eq(attributes[:priceCurrency])
      expect(offer.to_h[:price]).to eq(attributes[:price])
    end

    it 'assigns optional attributes when provided' do
      attributes = {
        priceCurrency: 'USD',
        price: 1000,
        availability: 'InStock',
        url: 'https://example.com/offer'
      }
      offer = SchemaOrg::Offer.new(attributes)

      expect(offer.to_h[:availability]).to eq(attributes[:availability])
      expect(offer.to_h[:url]).to eq(attributes[:url])
    end

    it 'does not include optional attributes if they are not provided' do
      offer = SchemaOrg::Offer.new(priceCurrency: 'EUR', price: 200)
      expect(offer.to_h.keys).not_to include(:availability, :url)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag with required attributes' do
      attributes = {
        priceCurrency: 'GBP',
        price: 750
      }
      offer = SchemaOrg::Offer.new(attributes)

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'Offer',
        priceCurrency: 'GBP',
        price: 750
      }

      actual_data = JSON.parse(offer.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end

    it 'generates JSON-LD wrapped in a script tag with all attributes' do
      attributes = {
        priceCurrency: 'USD',
        price: 1000,
        availability: 'OutOfStock',
        url: 'https://example.com/special-offer'
      }
      offer = SchemaOrg::Offer.new(attributes)

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'Offer',
        priceCurrency: 'USD',
        price: 1000,
        availability: 'OutOfStock',
        url: 'https://example.com/special-offer'
      }

      actual_data = JSON.parse(offer.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end
  end
end
