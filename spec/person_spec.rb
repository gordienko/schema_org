# frozen_string_literal: true

RSpec.describe SchemaOrg::Person do
  describe '#initialize' do
    it 'sets the default @type to Person' do
      person = SchemaOrg::Person.new(name: 'John Doe')
      expect(person.to_h[:@type]).to eq('Person')
    end

    it 'assigns all required attributes correctly' do
      person = SchemaOrg::Person.new(name: 'Jane Smith')
      expect(person.to_h[:name]).to eq('Jane Smith')
    end

    it 'assigns optional attributes when provided' do
      alumni = SchemaOrg::CollegeOrUniversity.new(name: 'Harvard University')

      attributes = {
        name: 'Jane Smith',
        award: 'Nobel Prize',
        alumni_of: alumni,
        honorific_suffix: 'PhD',
        same_as: ['https://example.com/jane-smith', 'https://twitter.com/jane_smith'],
        url: 'https://example.com/jane-smith'
      }

      person = SchemaOrg::Person.new(attributes)

      expect(person.to_h[:award]).to eq('Nobel Prize')
      expect(person.to_h[:alumni_of]).to eq(alumni.to_h)
      expect(person.to_h[:honorific_suffix]).to eq('PhD')
      expect(person.to_h[:same_as]).to eq(['https://example.com/jane-smith', 'https://twitter.com/jane_smith'])
      expect(person.to_h[:url]).to eq('https://example.com/jane-smith')
    end

    it 'does not include optional attributes if they are not provided' do
      person = SchemaOrg::Person.new(name: 'John Doe')

      expect(person.to_h.keys).not_to include(:award, :alumni_of, :honorific_suffix, :same_as, :url)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag with required attributes' do
      person = SchemaOrg::Person.new(name: 'John Doe')

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'Person',
        name: 'John Doe'
      }

      actual_data = JSON.parse(person.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end

    it 'generates JSON-LD wrapped in a script tag with all attributes' do
      alumni = SchemaOrg::CollegeOrUniversity.new(name: 'MIT')

      attributes = {
        name: 'Alice Johnson',
        award: 'Pulitzer Prize',
        alumni_of: alumni,
        honorific_suffix: 'MD',
        same_as: ['https://linkedin.com/alice-johnson', 'https://github.com/ajohnson'],
        url: 'https://alicejohnson.com'
      }

      person = SchemaOrg::Person.new(attributes)

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'Person',
        name: 'Alice Johnson',
        award: 'Pulitzer Prize',
        alumni_of: alumni.to_h.transform_keys(&:to_s),
        honorific_suffix: 'MD',
        same_as: ['https://linkedin.com/alice-johnson', 'https://github.com/ajohnson'],
        url: 'https://alicejohnson.com'
      }

      actual_data = JSON.parse(person.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end
  end
end
