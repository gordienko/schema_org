# frozen_string_literal: true

RSpec.describe SchemaOrg::CollegeOrUniversity do
  describe '#initialize' do
    it 'sets the default @type to CollegeOrUniversity' do
      university = SchemaOrg::CollegeOrUniversity.new(name: 'Test University')
      expect(university.to_h[:@type]).to eq('CollegeOrUniversity')
    end

    it 'sets the name correctly' do
      university = SchemaOrg::CollegeOrUniversity.new(name: 'Test University')
      expect(university.to_h[:name]).to eq('Test University')
    end

    it 'sets the url correctly if provided' do
      university = SchemaOrg::CollegeOrUniversity.new(name: 'Test University', url: 'https://example.com')
      expect(university.to_h[:url]).to eq('https://example.com')
    end

    it 'does not include url if it is not provided' do
      university = SchemaOrg::CollegeOrUniversity.new(name: 'Test University')
      expect(university.to_h.key?(:url)).to eq(false)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag' do
      university = SchemaOrg::CollegeOrUniversity.new(name: 'Test University', url: 'https://example.com')

      expected_json = {
        '@context' => 'https://schema.org',
        '@type' => 'CollegeOrUniversity',
        name: 'Test University',
        url: 'https://example.com'
      }.to_json

      json_ld_script = university.to_json_ld
      expect(json_ld_script).to eq("<script type=\"application/ld+json\">\n#{expected_json}\n</script>")
    end

    it 'generates JSON-LD without url if it is not provided' do
      university = SchemaOrg::CollegeOrUniversity.new(name: 'Test University')

      expected_json = {
        '@context' => 'https://schema.org',
        '@type' => 'CollegeOrUniversity',
        name: 'Test University'
      }.to_json

      json_ld_script = university.to_json_ld
      expect(json_ld_script).to eq("<script type=\"application/ld+json\">\n#{expected_json}\n</script>")
    end
  end
end
