# frozen_string_literal: true

RSpec.describe SchemaOrg::WebSite do
  describe '#initialize' do
    it 'sets the default @type to WebSite' do
      website = SchemaOrg::WebSite.new(name: 'Example Website', url: 'https://example.com')
      expect(website.to_h[:@type]).to eq('WebSite')
    end

    it 'assigns all required attributes correctly' do
      attributes = {
        name: 'Test WebSite',
        url: 'https://example.com'
      }
      website = SchemaOrg::WebSite.new(attributes)

      expect(website.to_h[:name]).to eq(attributes[:name])
      expect(website.to_h[:url]).to eq(attributes[:url])
    end

    it 'assigns the optional potential_action attribute if provided' do
      search_action = SchemaOrg::SearchAction.new(query_input: 'search query', target: 'https://example.com/search')
      attributes = {
        name: 'Test WebSite',
        url: 'https://example.com',
        potential_action: search_action
      }
      website = SchemaOrg::WebSite.new(attributes)

      expect(website.to_h[:potential_action]).to eq(search_action.to_h)
    end

    it 'excludes the optional potential_action attribute if not provided' do
      website = SchemaOrg::WebSite.new(name: 'Example Website', url: 'https://example.com')

      expect(website.to_h.key?(:potential_action)).to eq(false)
    end

    it 'raises an error if required attributes are missing' do
      expect { SchemaOrg::WebSite.new(url: 'https://example.com') }
        .to raise_error(Dry::Struct::Error, /:name is missing in Hash input/)

      expect { SchemaOrg::WebSite.new(name: 'Missing URL') }
        .to raise_error(Dry::Struct::Error, /:url is missing in Hash input/)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD with all required attributes' do
      attributes = {
        name: 'Example WebSite',
        url: 'https://example.com'
      }
      website = SchemaOrg::WebSite.new(attributes)

      expected_json = {
        '@context' => 'https://schema.org',
        '@type' => 'WebSite',
        name: 'Example WebSite',
        url: 'https://example.com'
      }.to_json

      json_ld_script = website.to_json_ld
      actual_data = JSON.parse(json_ld_script.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(JSON.parse(expected_json))
    end

    it 'generates JSON-LD with required and optional attributes' do
      search_action = SchemaOrg::SearchAction.new(query_input: 'search term', target: 'https://example.com/search')
      attributes = {
        name: 'WebSite with Search',
        url: 'https://example.com',
        potential_action: search_action
      }
      website = SchemaOrg::WebSite.new(attributes)

      expected_json = {
        '@context' => 'https://schema.org',
        '@type' => 'WebSite',
        name: 'WebSite with Search',
        url: 'https://example.com',
        potential_action: search_action.to_h
      }.to_json

      json_ld_script = website.to_json_ld
      actual_data = JSON.parse(json_ld_script.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(JSON.parse(expected_json))
    end
  end
end
