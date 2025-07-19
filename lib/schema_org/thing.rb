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
  # - description: (String, optional) - A description of the item.
  # - url: (String) - URL of the item.
  class Thing < Base
    attribute :name, Types::String
    attribute :description?, Types::String
    attribute :url, Types::WebUrl
  end
end
