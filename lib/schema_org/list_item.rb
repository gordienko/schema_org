# frozen_string_literal: true

#
# Model the Schema.org `ItemListElement`.  See https://schema.org/ItemListElement
#
module SchemaOrg
  #
  # Represents an element of a Schema.org `ItemList` or `ListItem`. See https://schema.org/ListItem
  #
  # This class is used to describe an item in a list, optionally including additional attributes
  # such as position, name, URL, and an associated image. The item itself can be a URL string or
  # another Schema.org type.
  #
  # === Attributes
  #
  # - image?: (String) - Optional. A URL that points to an image associated with the item.
  # - item?: (ItemList) - Optional. Refers to the item itself, which can either be a URL (String)
  #   or another Schema.org object (Base).
  # - name?: (String) - Optional. The name of the item.
  # - position?: (Integer) - Optional. The position of the item in the list.
  # - url?: (Types::WebUrl) - Optional. A URL linking to the item.
  # - nextItem?: (ListItem) - Optional. A link to the ListItem that follows the current one.
  # - previousItem?: (ListItem) - Optional. A link to the ListItem that precedes the current one.
  # - identifier?: (Types::String) - Optional. The identifier property represents any kind of identifier for the item.
  # - description?: (Types::String) - Optional. A description of the item.
  # - additionalType?: (Types::String) - Optional. An additional type for the item, usually represented as a URL.
  # - alternateName?: (Types::String) - Optional. An alias for the item.
  # - mainEntityOfPage?: (Types::String) - Optional. Indicates a page for which this item is the main entity being described.
  # - potentialAction?: (Types::Any) - Optional. Indicates a potential Action that describes an idealized action
  #   in which this item would be an 'object'.
  # - sameAs?: (Types::WebUrl) - Optional. URL of a reference web page that unambiguously indicates the item's identity.
  #
  class ListItem < Base
    attribute :image?, Types::String
    attribute :item?, ItemList
    attribute :name?, Types::String
    attribute :position?, Types::Integer
    attribute :url?, Types::WebUrl
    attribute :nextItem?, Types::Any
    attribute :previousItem?, Types::Any
    attribute :identifier?, Types::String
    attribute :description?, Types::String
    attribute :additionalType?, Types::String
    attribute :alternateName?, Types::String
    attribute :mainEntityOfPage?, Types::String
    attribute :potentialAction?, Types::Any
    attribute :sameAs?, Types::WebUrl
  end
end
