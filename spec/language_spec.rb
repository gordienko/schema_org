# frozen_string_literal: true

RSpec.describe SchemaOrg::Language do
  describe '#initialize' do
    it 'sets the default @type to Language' do
      language = SchemaOrg::Language.new(name: 'English')
      expect(language.to_h[:@type]).to eq('Language')
    end

    it 'sets the name attribute correctly' do
      language = SchemaOrg::Language.new(name: 'French')
      expect(language.to_h[:name]).to eq('French')
    end

    it 'sets alternateName if provided' do
      language = SchemaOrg::Language.new(name: 'Spanish', alternateName: 'Español')
      expect(language.to_h[:alternateName]).to eq('Español')
    end

    it 'does not include alternateName if not provided' do
      language = SchemaOrg::Language.new(name: 'German')
      expect(language.to_h.key?(:alternateName)).to eq(false)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag' do
      language = SchemaOrg::Language.new(name: 'English', alternateName: 'Anglais')

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'Language',
        name: 'English',
        alternateName: 'Anglais'
      }

      actual_data = JSON.parse(language.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end

    it 'does not include optional attributes if they are not provided' do
      language = SchemaOrg::Language.new(name: 'German')

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'Language',
        name: 'German'
      }

      actual_data = JSON.parse(language.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end
  end
end
