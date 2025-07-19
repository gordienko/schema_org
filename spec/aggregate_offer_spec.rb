# frozen_string_literal: true

RSpec.describe SchemaOrg::AggregateOffer do
  describe '#initialize' do
    it 'sets required attributes correctly' do
      attributes = {
        lowPrice: 100,
        priceCurrency: 'USD'
      }
      aggregate_offer = SchemaOrg::AggregateOffer.new(attributes)

      expect(aggregate_offer.lowPrice).to eq(100)
      expect(aggregate_offer.priceCurrency).to eq('USD')
      expect(aggregate_offer.to_h).to include(lowPrice: 100, priceCurrency: 'USD')
    end

    it 'handles optional attributes properly' do
      attributes = {
        lowPrice: 100,
        priceCurrency: 'USD',
        highPrice: 500,
        offerCount: '10',
        offers: %w[Offer1 Offer2]
      }
      aggregate_offer = SchemaOrg::AggregateOffer.new(attributes)

      expect(aggregate_offer.highPrice).to eq(500)
      expect(aggregate_offer.offerCount).to eq('10')
      expect(aggregate_offer.offers).to eq(%w[Offer1 Offer2])
    end

    it 'ignores optional attributes when they are nil' do
      attributes = {
        lowPrice: 100,
        priceCurrency: 'USD',
        highPrice: nil,
        offerCount: nil,
        offers: nil
      }
      aggregate_offer = SchemaOrg::AggregateOffer.new(attributes)

      expect(aggregate_offer.to_h).not_to include(:highPrice)
      expect(aggregate_offer.to_h).not_to include(:offerCount)
      expect(aggregate_offer.to_h).not_to include(:offers)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD format correctly' do
      attributes = {
        lowPrice: 100,
        priceCurrency: 'USD',
        highPrice: 500,
        offerCount: '10',
        offers: %w[Offer1 Offer2]
      }
      aggregate_offer = SchemaOrg::AggregateOffer.new(attributes)

      json_ld_script = aggregate_offer.to_json_ld
      expected_json = {
        '@context' => 'https://schema.org',
        '@type' => 'AggregateOffer',
        lowPrice: 100,
        priceCurrency: 'USD',
        highPrice: 500,
        offerCount: '10',
        offers: %w[Offer1 Offer2]
      }.to_json

      expect(json_ld_script).to eq("<script type=\"application/ld+json\">\n#{expected_json}\n</script>")
    end
  end
end
