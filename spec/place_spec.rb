# frozen_string_literal: true

RSpec.describe SchemaOrg::Place do
  let(:address) do
    SchemaOrg::PostalAddress.new(
      streetAddress: '123 Main Street',
      addressLocality: 'New York',
      addressRegion: 'NY',
      postalCode: '10001',
      addressCountry: 'USA'
    )
  end

  describe '#initialize' do
    it 'sets the default @type to Place' do
      place = SchemaOrg::Place.new(address: address)
      expect(place.to_h[:@type]).to eq('Place')
    end

    it 'assigns the required attribute correctly' do
      place = SchemaOrg::Place.new(address: address)
      expect(place.to_h[:address]).to eq(address.to_h)
    end

    it 'raises an error if the required attribute is missing' do
      expect { SchemaOrg::Place.new }.to raise_error(Dry::Struct::Error, /:address is missing in Hash input/)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag with the required attributes' do
      place = SchemaOrg::Place.new(address: address)

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'Place',
        address: address.to_h.transform_keys(&:to_s)
      }

      actual_data = JSON.parse(place.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end
  end
end
