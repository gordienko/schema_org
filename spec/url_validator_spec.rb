# frozen_string_literal: true

RSpec.describe SchemaOrg::UrlValidator do
  describe '.valid_web_url?' do
    it 'returns true for valid HTTPS URLs' do
      expect(SchemaOrg::UrlValidator.valid_web_url?('https://example.com')).to eq(true)
    end

    it 'returns true for valid HTTP URLs with a path' do
      expect(SchemaOrg::UrlValidator.valid_web_url?('http://example.com/path')).to eq(true)
    end

    it 'returns false for URLs with unsupported schemes' do
      expect(SchemaOrg::UrlValidator.valid_web_url?('ftp://example.com')).to eq(false)
    end

    it 'returns false for invalid URL strings' do
      expect(SchemaOrg::UrlValidator.valid_web_url?('not-a-url')).to eq(false)
    end

    it 'returns false for an empty string' do
      expect(SchemaOrg::UrlValidator.valid_web_url?('')).to eq(false)
    end

    it 'returns false for nil values' do
      expect(SchemaOrg::UrlValidator.valid_web_url?(nil)).to eq(false)
    end

    it 'returns false for valid URLs missing a host' do
      expect(SchemaOrg::UrlValidator.valid_web_url?('https:///path')).to eq(false)
    end

    it 'returns false for valid HTTP URLs missing a scheme' do
      expect(SchemaOrg::UrlValidator.valid_web_url?('example.com')).to eq(false)
    end

    it 'returns false for a malformed URL' do
      expect(SchemaOrg::UrlValidator.valid_web_url?('http://')).to eq(false)
    end
  end
end
