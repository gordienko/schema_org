# frozen_string_literal: true

#
# Model the Schema.org **Person**.  See http://schema.org/Person
#
module SchemaOrg
  #
  # Model the Schema.org **Person**. See http://schema.org/Person
  #
  # The `Person` class represents an individual person as defined by Schema.org.
  # It inherits from the base class and provides structured attributes
  # to describe key properties of a person.
  #
  # === Attributes
  #
  # - `award?` (String):
  #   An award or recognition received by the person.
  #
  # - `alumni_of?` (CollegeOrUniversity):
  #   The educational institution(s) that the person is an alumni of.
  #
  # - `honorific_suffix?` (String):
  #   Honorific suffixes of the person, such as PhD, MD, or other designations.
  #
  # - `name` (String):
  #   The name of the person.
  #   This attribute is required.
  #
  # - `same_as?` (Array):
  #   URLs that indicate a reference web page that identifies the person.
  #
  # - `url?` (String):
  #   The URL for the person's main webpage or profile.
  class Person < Base
    attribute :award?, Types::String
    attribute :alumni_of?, CollegeOrUniversity
    attribute :honorific_suffix?, Types::String
    attribute :name, Types::String
    attribute :same_as?, Types::Array
    attribute :url?, Types::WebUrl
  end
end
