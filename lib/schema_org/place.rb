# frozen_string_literal: true

#
# Model the Schema.org `Thing > Place`.  See http://schema.org/Place
#
module SchemaOrg
  #
  # Model the Schema.org `Thing > Place`. See http://schema.org/Place
  #
  # === Attributes
  #
  # - address: (PostalAddress) - Specifies the physical mailing address associated with the `Place`.
  # - geo?: (GeoCoordinates) - Optional. The geo coordinates of the place.
  # - name?: (Types::String) - Optional. The name of the place.
  # - description?: (Types::String) - Optional. A description of the place.
  # - telephone?: (Types::String) - Optional. The telephone number of the place.
  # - url?: (Types::WebUrl) - Optional. The URL of the place's website.
  # - image?: (Types::Any) - Optional. An image of the place.
  # - openingHours?: (Types::String) - Optional. The general opening hours for the place.
  # - hasMap?: (Types::WebUrl) - Optional. A URL to a map of the place.
  # - isAccessibleForFree?: (Types::Bool) - Optional. A flag to signal that the place is accessible for free.
  # - priceRange?: (Types::String) - Optional. The price range of the place, for example "$$$".
  # - maximumAttendeeCapacity?: (Types::Integer) - Optional. The total number of individuals that may attend at the place.
  # - containedInPlace?: (Types::Any) - Optional. The place that contains this place.
  # - containsPlace?: (Types::Array) - Optional. The places contained in this place.
  # - amenityFeature?: (Types::Array) - Optional. Features or facilities available at the place.
  # - review?: (Types::Array) - Optional. A review of the place.
  # - aggregateRating?: (Types::Any) - Optional. The overall rating, based on a collection of reviews.
  # - latitude?: (Types::Float) - Optional. The latitude of the place (alternative to using geo).
  # - longitude?: (Types::Float) - Optional. The longitude of the place (alternative to using geo).
  # - sameAs?: (Types::Array) - Optional. URLs that unambiguously indicate the identity of the place.
  # - publicAccess?: (Types::Bool) - Optional. A flag to signal that the place is open to public visitors.
  #
  class Place < Base
    # === required attributes
    attribute :address, PostalAddress

    # === optional attributes
    attribute :geo?, GeoCoordinates
    attribute :name?, Types::String
    attribute :description?, Types::String
    attribute :telephone?, Types::String
    attribute :url?, Types::WebUrl
    attribute :image?, Types::Any
    attribute :openingHours?, Types::String
    attribute :hasMap?, Types::WebUrl
    attribute :isAccessibleForFree?, Types::Bool
    attribute :priceRange?, Types::String
    attribute :maximumAttendeeCapacity?, Types::Integer
    attribute :containedInPlace?, Types::Any
    attribute :containsPlace?, Types::Array
    attribute :amenityFeature?, Types::Array
    attribute :review?, Types::Array
    attribute :aggregateRating?, Types::Any
    attribute :latitude?, Types::Float
    attribute :longitude?, Types::Float
    attribute :sameAs?, Types::Array
    attribute :publicAccess?, Types::Bool
  end
end
