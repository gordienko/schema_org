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
  # - url?: (String) - Optional. A URL linking to the item.
  #
  class ListItem < Base
    attribute :image?, Types::String
    attribute :item?, ItemList
    attribute :name?, Types::String
    attribute :position?, Types::Integer
    attribute :url?, Types::WebUrl
  end
end
