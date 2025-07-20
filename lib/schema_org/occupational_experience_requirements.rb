# frozen_string_literal: true

#
# Model the Schema.org `OccupationalExperienceRequirements`. See https://schema.org/OccupationalExperienceRequirements
#
module SchemaOrg
  #
  # Model the Schema.org `OccupationalExperienceRequirements`. See https://schema.org/OccupationalExperienceRequirements
  #
  # === Attributes
  #
  # - monthsOfExperience: (String) - The number of months of experience required for a position
  # - experienceInPlaceOfEducation?: (Types::Bool) - Optional. Indicates whether experience can substitute for formal educational qualifications
  # - name?: (Types::String) - Optional. The name of the experience requirements
  # - description?: (Types::String) - Optional. A description of the experience requirements
  # - identifier?: (Types::String) - Optional. The identifier property represents any kind of identifier
  # - alternateName?: (Types::String) - Optional. An alias for the experience requirements
  # - additionalType?: (Types::String) - Optional. An additional type for the experience requirements
  # - url?: (Types::WebUrl) - Optional. URL of the experience requirements
  # - sameAs?: (Types::WebUrl) - Optional. URL of a reference web page that unambiguously indicates the item's identity
  #
  class OccupationalExperienceRequirements < Base
    # === required attributes
    attribute :monthsOfExperience, Types::String

    # === optional attributes
    attribute :experienceInPlaceOfEducation?, Types::Bool
    attribute :name?, Types::String
    attribute :description?, Types::String
    attribute :identifier?, Types::String
    attribute :alternateName?, Types::String
    attribute :additionalType?, Types::String
    attribute :url?, Types::WebUrl
    attribute :sameAs?, Types::WebUrl
  end
end
