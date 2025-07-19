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
  # - itemListOrder?: (String) - Optional. Specifies the order of the list (e.g., 'Ascending', 'Descending').
  # - numberOfItems?: (Integer) - Optional. Denotes the total number of items in the list.
  # - url?: (String) - Optional. A URL associated with the item list.
  # - image?: (String) - Optional. Provides a URL to an image representing the item list.
  #
  class ItemList < Base
    attribute :itemListElement?, Types::Array
    attribute :itemListOrder?, Types::String
    attribute :numberOfItems?, Types::Integer

    attribute :url?, Types::WebUrl
    attribute :image?, Types::String
  end
end
