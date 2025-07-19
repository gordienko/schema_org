# frozen_string_literal: true

require 'dry-struct'
require 'json'
require 'zeitwerk'
require 'date'

loader = Zeitwerk::Loader.for_gem
loader.setup

module SchemaOrg
  # SchemaOrg::Types
  module Types
    include Dry.Types()

    WebUrl = Types::String.constructor do |url|
      url = url.to_s.strip
      unless SchemaOrg::UrlValidator.valid_web_url?(url)
        raise Dry::Types::ConstraintError.new("'#{url}' is not a valid URL", url)
      end

      url
    end
  end

  class Error < StandardError; end
end

loader.eager_load
