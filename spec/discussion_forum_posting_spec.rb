# frozen_string_literal: true

require 'date'

RSpec.describe SchemaOrg::DiscussionForumPosting do
  let(:author) { SchemaOrg::Person.new(name: 'John Doe') }
  let(:date_published) { Date.new(2025, 7, 19) }

  describe '#initialize' do
    it 'sets the default @type to DiscussionForumPosting' do
      post = SchemaOrg::DiscussionForumPosting.new(author: author, datePublished: date_published)
      expect(post.to_h[:@type]).to eq('DiscussionForumPosting')
    end

    it 'sets the author and datePublished correctly' do
      post = SchemaOrg::DiscussionForumPosting.new(author: author, datePublished: date_published)
      expect(post.to_h[:author]).to eq(author.to_h)
      expect(post.to_h[:datePublished]).to eq(date_published)
    end

    it 'sets optional attributes if provided' do
      attributes = {
        author: author.to_h,
        datePublished: date_published,
        headline: 'Test Headline',
        text: 'This is the content of the post.',
        commentCount: 10,
        url: 'https://example.com/post/1',
        interactionStatistic: ['likes: 100', 'shares: 50']
      }
      post = SchemaOrg::DiscussionForumPosting.new(attributes)
      expect(post.to_h).to include(attributes)
    end

    it 'does not include optional attributes if they are not provided' do
      post = SchemaOrg::DiscussionForumPosting.new(author: author, datePublished: date_published)
      expect(post.to_h.key?(:headline)).to eq(false)
      expect(post.to_h.key?(:text)).to eq(false)
      expect(post.to_h.key?(:url)).to eq(false)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag' do
      attributes = {
        author: author,
        datePublished: date_published,
        headline: 'Test Headline',
        text: 'This is the content of the post.',
        commentCount: 10,
        url: 'https://example.com/post/1',
        interactionStatistic: ['likes: 100', 'shares: 50']
      }
      post = SchemaOrg::DiscussionForumPosting.new(attributes)

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'DiscussionForumPosting',
        author: author.to_h.transform_keys(&:to_s),
        datePublished: date_published.strftime('%Y-%m-%d'),
        headline: 'Test Headline',
        text: 'This is the content of the post.',
        commentCount: 10,
        url: 'https://example.com/post/1',
        interactionStatistic: ['likes: 100', 'shares: 50']
      }

      actual_data = JSON.parse(post.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end

    it 'generates JSON-LD without optional attributes if they are not provided' do
      post = SchemaOrg::DiscussionForumPosting.new(author: author, datePublished: date_published)
      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'DiscussionForumPosting',
        author: author.to_h.transform_keys(&:to_s),
        datePublished: date_published.strftime('%Y-%m-%d')
      }

      actual_data = JSON.parse(post.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end
  end
end
