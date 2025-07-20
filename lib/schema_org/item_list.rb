# frozen_string_literal: true

#
# Model the Schema.org `ItemList`.  See https://schema.org/ItemList
#
module SchemaOrg
  #
  # Represents the Schema.org `ItemList`. Refer to https://schema.org/ItemList for details.
  #
  # === Attributes
  #
  # - itemListElement?: (Array) - Optional. Indicates items that are part of the list.
  # - itemListOrder?: (Types::String) - Optional. Specifies the order of the list (e.g., 'Ascending', 'Descending').
  # - numberOfItems?: (Types::Integer) - Optional. Denotes the total number of items in the list.
  # - url?: (Types::WebUrl) - Optional. A URL associated with the item list.
  # - image?: (Types::String) - Optional. Provides a URL to an image representing the item list.
  # - name?: (Types::String) - Optional. The name of the list.
  # - description?: (Types::String) - Optional. A description of the list.
  # - additionalType?: (Types::String) - Optional. An additional type for the list, usually represented as a URL.
  # - alternateName?: (Types::String) - Optional. An alias for the list.
  # - mainEntityOfPage?: (Types::String) - Optional. Indicates a page for which this list is the main entity being described.
  # - isPartOf?: (Types::Any) - Optional. Indicates a CreativeWork that this list is a part of.
  # - sameAs?: (Types::WebUrl) - Optional. URL of a reference web page that unambiguously indicates the item's identity.
  # - identifier?: (Types::String) - Optional. The identifier property represents any kind of identifier for the list.
  # - potentialAction?: (Types::Any) - Optional. Indicates a potential Action that describes an idealized action
  #   in which this list would be an 'object'.
  #
  class ItemList < Base
    attribute :itemListElement?, Types::Array
    attribute :itemListOrder?, Types::String
    attribute :numberOfItems?, Types::Integer

    attribute :url?, Types::WebUrl
    attribute :image?, Types::String
    attribute :name?, Types::String
    attribute :description?, Types::String
    attribute :additionalType?, Types::String
    attribute :alternateName?, Types::String
    attribute :mainEntityOfPage?, Types::String
    attribute :isPartOf?, Types::Any
    attribute :sameAs?, Types::WebUrl
    attribute :identifier?, Types::String
    attribute :potentialAction?, Types::Any
  end
end
