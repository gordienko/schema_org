# frozen_string_literal: true

# Google allows `url` to be a string:
# https://developers.google.com/search/docs/appearance/structured-data/logo

module SchemaOrg
  # SchemaOrg::Organization
  class Organization < Base
    # === required attributes
    attribute :name, Types::String
    attribute :url, Types::WebUrl

    # === optional attributes
    attribute :contactPoint?, Types::Array
    attribute :email?, Types::String
    attribute :founder?, Person
    attribute :foundingDate?, Types::Date
    attribute :foundingLocation?, Place
    attribute :legalName?, Types::String
    attribute :logo?, Types::WebUrl
    attribute :sameAs?, Types::Array
    attribute :slogan?, Types::String
    attribute :telephone?, Types::String
    attribute :address?, Types::Any
    attribute :description?, Types::String
    attribute :vatID?, Types::String
    attribute :taxID?, Types::String
    attribute :faxNumber?, Types::String
    attribute :department?, Types::Array
    attribute :parentOrganization?, Types::Any
    attribute :subOrganization?, Types::Array
    attribute :employees?, Types::Array
    attribute :member?, Types::Array
    attribute :memberOf?, Types::Array
    attribute :duns?, Types::String
    attribute :areaServed?, Types::Any
    attribute :award?, Types::String
    attribute :brand?, Types::Any
    attribute :location?, Types::Any
    attribute :review?, Types::Any
    attribute :aggregateRating?, Types::Any
    attribute :hasOfferCatalog?, Types::Any
    attribute :hasPOS?, Types::Any
    attribute :globalLocationNumber?, Types::String
    attribute :isicV4?, Types::String
    attribute :naics?, Types::String
    attribute :numberOfEmployees?, Types::Any
    attribute :knowsAbout?, Types::Any
    attribute :knowsLanguage?, Types::Any
    attribute :publishingPrinciples?, Types::Any
    attribute :seeks?, Types::Any
    attribute :identifier?, Types::String
    attribute :image?, Types::Any
    attribute :alternateName?, Types::String
  end
end
