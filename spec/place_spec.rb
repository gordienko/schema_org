# frozen_string_literal: true

RSpec.describe SchemaOrg::Place do
  describe '#initialize' do
    it 'sets the default @type to Place' do
      place = SchemaOrg::Place.new(address: '123 Main Street, New York, NY')
      expect(place.to_h[:@type]).to eq('Place')
    end

    it 'assigns the required attribute correctly' do
      address = '456 Elm Street, Los Angeles, CA'
      place = SchemaOrg::Place.new(address: address)
      expect(place.to_h[:address]).to eq(address)
    end

    it 'raises an error if the required attribute is missing' do
      expect { SchemaOrg::Place.new }.to raise_error(Dry::Struct::Error, /:address is missing in Hash input/)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag with the required attributes' do
      address = '789 Oak Street, San Francisco, CA'
      place = SchemaOrg::Place.new(address: address)

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'Place',
        address: address
      }

      actual_data = JSON.parse(place.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end
  end
end
