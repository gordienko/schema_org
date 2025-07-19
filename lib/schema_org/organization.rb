# frozen_string_literal: true

# Google allows `url` to be a string:
# https://developers.google.com/search/docs/appearance/structured-data/logo

module SchemaOrg
  # SchemaOrg::Organization
  class Organization < Base
    attribute :contact_points?, Types::Array
    attribute :email?, Types::String
    attribute :founder?, Person
    attribute :founding_date?, Types::Date
    attribute :founding_location?, Place
    attribute :legal_name?, Types::String
    attribute :logo, Types::String
    attribute :name, Types::String
    attribute :same_as?, Types::Array
    attribute :slogan?, Types::String
    attribute :telephone?, Types::String
    attribute :url, Types::WebUrl
  end
end
