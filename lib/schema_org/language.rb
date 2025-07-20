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
  # - `identifier?` (Types::String) - The identifier property represents any kind of identifier for the language, such as ISO codes.
  # - `description?` (Types::String) - A description of the language.
  # - `url?` (Types::WebUrl) - URL of the language's official page or documentation.
  # - `sameAs?` (Types::WebUrl) - URL of a reference Web page that unambiguously indicates the language's identity (e.g. Wikipedia page).
  # - `additionalType?` (Types::String) - An additional type for the language, typically used for adding more specific types from external vocabularies.
  # - `image?` (Types::String) - An image that represents the language, such as a flag or symbol.
  # - `potentialAction?` (Types::Any) - Indicates a potential Action that describes an idealized action in which this language would be an 'object'.
  #
  class Language < Base
    attribute :alternateName?, Types::String
    # === required attributes
    attribute :name, Types::String

    # === optional attributes
    attribute :identifier?, Types::String
    attribute :description?, Types::String
    attribute :url?, Types::WebUrl
    attribute :sameAs?, Types::WebUrl
    attribute :additionalType?, Types::String
    attribute :image?, Types::String
    attribute :potentialAction?, Types::Any
  end
end
