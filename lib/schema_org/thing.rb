# frozen_string_literal: true

#
# Model the Schema.org `Thing`.  See http://schema.org/Thing
#
module SchemaOrg
  #
  # Represents the generic `Thing` type from Schema.org. See http://schema.org/Thing
  #
  # === Attributes
  #
  # - name: (String) - The name of the item.
  # - description?: (String, optional) - A description of the item.
  # - url: (String) - URL of the item.
  # - identifier?: (String) - Optional. The identifier property represents any kind of identifier for the item, such as ISBNs, GTIN codes, UUIDs etc.
  # - sameAs?: (Types::Array) - Optional. URL of a reference web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
  # - alternateName?: (String) - Optional. An alias for the item.
  # - image?: (Types::Any) - Optional. An image of the item. This can be a URL or a fully described ImageObject.
  # - mainEntityOfPage?: (Types::Any) - Optional. Indicates a page (or other CreativeWork) for which this thing is the main entity being described.
  # - potentialAction?: (Types::Any) - Optional. Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role.
  # - additionalType?: (Types::WebUrl) - Optional. An additional type for the item, typically used for adding more specific types from external vocabularies.
  # - disambiguatingDescription?: (String) - Optional. A sub property of description. A short description of the item used to disambiguate from other, similar items.
  # - subjectOf?: (Types::Any) - Optional. A CreativeWork or Event about this Thing.
  # - isPartOf?: (Types::Any) - Optional. Indicates an item or CreativeWork that this item, or CreativeWork (in some sense), is part of.
  # - hasPart?: (Types::Any) - Optional. Indicates an item or CreativeWork that is part of this item, or CreativeWork (in some sense).
  # - keywords?: (String) - Optional. Keywords or tags used to describe this content. Multiple entries in a keywords list are typically delimited by commas.
  # - accessibilityAPI?: (String) - Optional. Indicates that the resource is compatible with the referenced accessibility API.
  # - accessibilityControl?: (String) - Optional. Identifies input methods that are sufficient to fully control the described resource.
  # - isAccessibleForFree?: (Types::Bool) - Optional. A flag to signal that the item, event, or place is accessible for free.
  #
  class Thing < Base
    # === required attributes
    attribute :name, Types::String
    attribute :url, Types::WebUrl

    # === optional attributes
    attribute :description?, Types::String
    attribute :identifier?, Types::String
    attribute :sameAs?, Types::Array
    attribute :alternateName?, Types::String
    attribute :image?, Types::Any
    attribute :mainEntityOfPage?, Types::Any
    attribute :potentialAction?, Types::Any
    attribute :additionalType?, Types::WebUrl
    attribute :disambiguatingDescription?, Types::String
    attribute :subjectOf?, Types::Any
    attribute :isPartOf?, Types::Any
    attribute :hasPart?, Types::Any
    attribute :keywords?, Types::String
    attribute :accessibilityAPI?, Types::String
    attribute :accessibilityControl?, Types::String
    attribute :isAccessibleForFree?, Types::Bool
  end
end
