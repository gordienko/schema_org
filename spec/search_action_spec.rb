# frozen_string_literal: true

RSpec.describe SchemaOrg::SearchAction do
  describe '#initialize' do
    it 'sets the default @type to SearchAction' do
      search_action = SchemaOrg::SearchAction.new(queryInput: 'test query', target: 'https://example.com/search')
      expect(search_action.to_h[:@type]).to eq('SearchAction')
    end

    it 'assigns all required attributes correctly' do
      attributes = {
        queryInput: 'search term',
        target: 'https://example.com/perform-search'
      }
      search_action = SchemaOrg::SearchAction.new(attributes)

      expect(search_action.to_h[:queryInput]).to eq(attributes[:queryInput])
      expect(search_action.to_h[:target]).to eq(attributes[:target])
    end

    it 'raises an error if queryInput is missing' do
      expect { SchemaOrg::SearchAction.new(target: 'https://example.com/search') }
        .to raise_error(Dry::Struct::Error, /:queryInput is missing in Hash input/)
    end

    it 'raises an error if target is missing' do
      expect { SchemaOrg::SearchAction.new(queryInput: 'test query') }
        .to raise_error(Dry::Struct::Error, /:target is missing in Hash input/)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag with all attributes' do
      attributes = {
        queryInput: 'test query',
        target: 'https://example.com/search'
      }
      search_action = SchemaOrg::SearchAction.new(attributes)

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'SearchAction',
        queryInput: 'test query',
        target: 'https://example.com/search'
      }

      actual_data = JSON.parse(
        search_action.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1]
      )
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end
  end
end
