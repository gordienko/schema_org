# frozen_string_literal: true

#
# Model the Schema.org `GeoCoordinates`. See https://schema.org/GeoCoordinates
#
module SchemaOrg
  # === Attributes
  #
  # - latitude: (Float) - The latitude of a location. For example 37.42242 (WGS 84).
  # - longitude: (Float) - The longitude of a location. For example -122.08585 (WGS 84).
  # - elevation?: (Float) - Optional. The elevation of a location (WGS 84).
  # - address?: (Types::Any) - Optional. Physical address of the item.
  # - addressCountry?: (Types::String) - Optional. The country. For example, USA. You can also provide the two-letter ISO 3166-1 alpha-2 country code.
  # - postalCode?: (Types::String) - Optional. The postal code. For example, 94043.
  # - name?: (Types::String) - Optional. The name of the item.
  # - description?: (Types::String) - Optional. A description of the item.
  # - alternateName?: (Types::String) - Optional. An alias for the item.
  #
  class GeoCoordinates < Base
    # === required attributes
    attribute :latitude, Types::Float
    attribute :longitude, Types::Float

    # === optional attributes
    attribute :elevation?, Types::Float
    attribute :address?, Types::Any
    attribute :addressCountry?, Types::String
    attribute :postalCode?, Types::String
    attribute :name?, Types::String
    attribute :description?, Types::String
    attribute :alternateName?, Types::String
  end
end
