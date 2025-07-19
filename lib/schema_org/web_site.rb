# frozen_string_literal: true

#
# Model the Schema.org `Thing > CreativeWork > WebSite`.
# @See http://schema.org/WebSite
#
module SchemaOrg
  #
  # Model the Schema.org `Thing > CreativeWork > WebSite`.
  #
  # The `WebSite` class represents a website, using structured data compliant with Schema.org's specifications.
  #
  # === Attributes
  #
  # - `name` (String): The name of the website.
  # - `potential_action?` (SearchAction, optional): Specifies a potential action that can be performed on the website,
  # such as a `SearchAction`.
  # - `url` (String): The URL of the website.
  #
  # @See http://schema.org/WebSite
  class WebSite < Base
    attribute :name, Types::String
    attribute :potential_action?, SearchAction
    attribute :url, Types::WebUrl
  end
end
