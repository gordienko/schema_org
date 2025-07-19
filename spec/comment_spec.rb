# frozen_string_literal: true

require 'date'

RSpec.describe SchemaOrg::Comment do
  let(:author) { SchemaOrg::Person.new(name: 'John Doe') }
  let(:date_published) { Date.new(2025, 7, 19) }

  describe '#initialize' do
    it 'sets the default @type to Comment' do
      comment = SchemaOrg::Comment.new(author: author, datePublished: date_published)
      expect(comment.to_h[:@type]).to eq('Comment')
    end

    it 'sets the author correctly' do
      comment = SchemaOrg::Comment.new(author: author, datePublished: date_published)
      expect(comment.to_h[:author]).to eq(author.to_h)
    end

    it 'sets the datePublished correctly' do
      comment = SchemaOrg::Comment.new(author: author, datePublished: date_published)
      expect(comment.to_h[:datePublished]).to eq(date_published)
    end

    it 'sets optional attributes if provided' do
      attributes = {
        author: author.to_h,
        datePublished: date_published,
        text: 'This is a comment.',
        url: 'https://example.com/comment/1'
      }
      comment = SchemaOrg::Comment.new(attributes)
      expect(comment.to_h).to include(attributes)
    end

    it 'excludes optional attributes if they are not provided' do
      comment = SchemaOrg::Comment.new(author: author, datePublished: date_published)
      expect(comment.to_h.key?(:text)).to eq(false)
      expect(comment.to_h.key?(:url)).to eq(false)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag' do
      attributes = {
        author: author,
        datePublished: date_published,
        text: 'This is a comment.',
        url: 'https://example.com/comment/1'
      }
      comment = SchemaOrg::Comment.new(attributes)

      expected_json = {
        '@context' => 'https://schema.org',
        '@type' => 'Comment',
        author: author.to_h,
        datePublished: date_published,
        text: 'This is a comment.',
        url: 'https://example.com/comment/1'
      }.to_json

      json_ld_script = comment.to_json_ld
      expect(json_ld_script).to eq("<script type=\"application/ld+json\">\n#{expected_json}\n</script>")
    end

    it 'generates JSON-LD without optional attributes if they are not provided' do
      comment = SchemaOrg::Comment.new(author: author, datePublished: date_published)

      expected_json = {
        '@context' => 'https://schema.org',
        '@type' => 'Comment',
        author: author.to_h,
        datePublished: date_published
      }.to_json

      json_ld_script = comment.to_json_ld
      expect(json_ld_script).to eq("<script type=\"application/ld+json\">\n#{expected_json}\n</script>")
    end
  end
end
