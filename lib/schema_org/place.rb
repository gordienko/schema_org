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
  # - address: (String) - Required. Specifies the physical mailing address associated with the `Place`.
  class Place < Base
    attribute :address, Types::String
  end
end
