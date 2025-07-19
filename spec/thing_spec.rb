# frozen_string_literal: true

RSpec.describe SchemaOrg::Thing do
  describe '#initialize' do
    it 'sets the default @type to Thing' do
      thing = SchemaOrg::Thing.new(name: 'Sample Item', url: 'https://example.com/item')
      expect(thing.to_h[:@type]).to eq('Thing')
    end

    it 'assigns all required attributes correctly' do
      attributes = {
        name: 'Test Item',
        url: 'https://example.com/test-item'
      }
      thing = SchemaOrg::Thing.new(attributes)

      expect(thing.to_h[:name]).to eq(attributes[:name])
      expect(thing.to_h[:url]).to eq(attributes[:url])
    end

    it 'assigns the optional description attribute if provided' do
      attributes = {
        name: 'Test Item',
        url: 'https://example.com/test-item',
        description: 'This is a sample item description.'
      }
      thing = SchemaOrg::Thing.new(attributes)

      expect(thing.to_h[:description]).to eq(attributes[:description])
    end

    it 'excludes the optional description attribute if not provided' do
      thing = SchemaOrg::Thing.new(name: 'No Description Item', url: 'https://example.com/no-description-item')

      expect(thing.to_h.key?(:description)).to eq(false)
    end

    it 'raises an error if required attributes are missing' do
      expect { SchemaOrg::Thing.new(url: 'https://example.com/no-name-item') }
        .to raise_error(Dry::Struct::Error, /:name is missing in Hash input/)

      expect { SchemaOrg::Thing.new(name: 'No URL Item') }
        .to raise_error(Dry::Struct::Error, /:url is missing in Hash input/)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD with all required attributes' do
      attributes = {
        name: 'Example Thing',
        url: 'https://example.com/example-thing'
      }
      thing = SchemaOrg::Thing.new(attributes)

      expected_json = {
        '@context' => 'https://schema.org',
        '@type' => 'Thing',
        name: 'Example Thing',
        url: 'https://example.com/example-thing'
      }.to_json

      json_ld_script = thing.to_json_ld
      actual_data = JSON.parse(json_ld_script.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(JSON.parse(expected_json))
    end

    it 'generates JSON-LD with required and optional attributes' do
      attributes = {
        name: 'Item with Description',
        url: 'https://example.com/item-with-description',
        description: 'This item has an optional description.'
      }
      thing = SchemaOrg::Thing.new(attributes)

      expected_json = {
        '@context' => 'https://schema.org',
        '@type' => 'Thing',
        name: 'Item with Description',
        url: 'https://example.com/item-with-description',
        description: 'This item has an optional description.'
      }.to_json

      json_ld_script = thing.to_json_ld
      actual_data = JSON.parse(json_ld_script.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(JSON.parse(expected_json))
    end
  end
end
