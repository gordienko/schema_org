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
  # - `alumniOf?` (CollegeOrUniversity):
  #   The educational institution(s) that the person is an alumni of.
  #
  # - `honorificSuffix?` (String):
  #   Honorific suffixes of the person, such as PhD, MD, or other designations.
  #
  # - `name` (String):
  #   The name of the person.
  #   This attribute is required.
  #
  # - `sameAs?` (Array):
  #   URLs that indicate a reference web page that identifies the person.
  #
  # - `url?` (String):
  #   The URL for the person's main webpage or profile.
  #
  # - `address?` (Types::Any):
  #   Optional. Physical address of the person.
  #
  # - `birthDate?` (Types::Date):
  #   Optional. Date of birth of the person.
  #
  # - `birthPlace?` (Types::Any):
  #   Optional. The place where the person was born.
  #
  # - `deathDate?` (Types::Date):
  #   Optional. Date of death of the person.
  #
  # - `email?` (Types::String):
  #   Optional. Email address of the person.
  #
  # - `familyName?` (Types::String):
  #   Optional. Family name (last name) of the person.
  #
  # - `givenName?` (Types::String):
  #   Optional. Given name (first name) of the person.
  #
  # - `additionalName?` (Types::String):
  #   Optional. An additional name for a person (middle name).
  #
  # - `gender?` (Types::String):
  #   Optional. Gender of the person.
  #
  # - `honorificPrefix?` (Types::String):
  #   Optional. Honorific prefix such as Dr., Mrs., Mr., etc.
  #
  # - `image?` (Types::Any):
  #   Optional. An image of the person.
  #
  # - `jobTitle?` (Types::String):
  #   Optional. The job title of the person.
  #
  # - `nationality?` (Types::String):
  #   Optional. Nationality of the person.
  #
  # - `telephone?` (Types::String):
  #   Optional. The telephone number of the person.
  #
  # - `description?` (Types::String):
  #   Optional. A description of the person.
  #
  # - `colleague?` (Types::Array):
  #   Optional. A colleague of the person.
  #
  # - `knows?` (Types::Array):
  #   Optional. A person known by this person.
  #
  # - `memberOf?` (Types::Array):
  #   Optional. An organization to which this person belongs.
  #
  # - `sibling?` (Types::Array):
  #   Optional. A sibling of the person.
  #
  # - `spouse?` (Types::Any):
  #   Optional. The person's spouse.
  #
  # - `worksFor?` (Types::Any):
  #   Optional. Organizations that the person works for.
  #
  # - `identifier?` (Types::String):
  #   Optional. The identifier property represents any kind of identifier for the person.
  #
  # - `alternateName?` (Types::String):
  #   Optional. An alias for the person.
  class Person < Base
    # === required attributes
    attribute :name, Types::String

    # === optional attributes
    attribute :award?, Types::String
    attribute :alumniOf?, CollegeOrUniversity
    attribute :honorificSuffix?, Types::String
    attribute :sameAs?, Types::Array
    attribute :url?, Types::WebUrl
    attribute :address?, Types::Any
    attribute :birthDate?, Types::Date
    attribute :birthPlace?, Types::Any
    attribute :deathDate?, Types::Date
    attribute :email?, Types::String
    attribute :familyName?, Types::String
    attribute :givenName?, Types::String
    attribute :additionalName?, Types::String
    attribute :gender?, Types::String
    attribute :honorificPrefix?, Types::String
    attribute :image?, Types::Any
    attribute :jobTitle?, Types::String
    attribute :nationality?, Types::String
    attribute :telephone?, Types::String
    attribute :description?, Types::String
    attribute :colleague?, Types::Array
    attribute :knows?, Types::Array
    attribute :memberOf?, Types::Array
    attribute :sibling?, Types::Array
    attribute :spouse?, Types::Any
    attribute :worksFor?, Types::Any
    attribute :identifier?, Types::String
    attribute :alternateName?, Types::String
  end
end
