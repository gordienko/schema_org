# frozen_string_literal: true

#
# Model the Schema.org `Thing > Intangible > Language`.
# See https://schema.org/Language
#
module SchemaOrg
  #
  # Represents the Schema.org entity `Thing > Intangible > Language`.
  # See https://schema.org/Language for more details.
  #
  # Attributes:
  #
  # - `alternateName?` (Types::String) - An optional name used as an alternative to the main name of the language.
  # - `name` (Types::String) - The name of the language.
  #
  class Language < Base
    attribute :alternateName?, Types::String
    attribute :name, Types::String
  end
end
