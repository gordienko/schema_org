# frozen_string_literal: true

#
# https://schema.org/CollegeOrUniversity
#
module SchemaOrg
  # https://schema.org/CollegeOrUniversity
  #
  # Represents an educational organization specifically of type College or University, as defined
  # by the Schema.org vocabulary. Colleges and universities are institutions that provide higher education.
  #
  # === Attributes
  #
  # - name: (String) - The name of the college or university.
  # - url: (String, optional) - The URL of the official website of the college or university.
  # - address?: (Types::Any) - Optional. Physical address of the college or university.
  # - alumni?: (Types::Array) - Optional. A list of notable alumni of the institution.
  # - description?: (Types::String) - Optional. A description of the college or university.
  # - email?: (Types::String) - Optional. Email address for the college or university.
  # - telephone?: (Types::String) - Optional. Telephone number for the college or university.
  # - logo?: (Types::WebUrl) - Optional. URL of the logo for the college or university.
  # - image?: (Types::Any) - Optional. An image of the college or university, such as a photo of the campus.
  # - location?: (Types::Any) - Optional. The location of the college or university.
  # - department?: (Types::Array) - Optional. A department of the college or university.
  # - faculty?: (Types::Array) - Optional. A faculty or division of the college or university.
  # - sameAs?: (Types::Array) - Optional. URLs to reference pages about the college or university.
  # - foundingDate?: (Types::String) - Optional. The date the institution was founded.
  # - identifier?: (Types::Any) - Optional. Any kind of identifier for the college or university.
  # - parentOrganization?: (Types::Any) - Optional. The larger organization that this organization is a branch of, if any.
  # - memberOf?: (Types::Any) - Optional. An Organization or a ProgramMembership to which this person or organization belongs.
  # - founder?: (Types::Any) - Optional. A person or organization that founded the college or university.
  # - funder?: (Types::Any) - Optional. A person or organization that supports (sponsors) the college or university through some kind of financial contribution.
  # - award?: (Types::String) - Optional. An award won by or for this college or university.
  # - hasCredential?: (Types::Any) - Optional. A credential awarded by the college or university.
  # - keywords?: (Types::String) - Optional. Keywords or tags used to describe the college or university.
  # - educationalCredentialAwarded?: (Types::Any) - Optional. A description of the credential, degree, or certificate awarded.
  # - numberOfStudents?: (Types::Any) - Optional. The number of students that attend the institution.
  # - campus?: (Types::Any) - Optional. A campus of a college, university, or other educational organization.
  #
  class CollegeOrUniversity < Base
    # === required attributes
    attribute :name, Types::String

    # === optional attributes
    attribute :url?, Types::WebUrl
    attribute :address?, Types::Any
    attribute :alumni?, Types::Array
    attribute :description?, Types::String
    attribute :email?, Types::String
    attribute :telephone?, Types::String
    attribute :logo?, Types::WebUrl
    attribute :image?, Types::Any
    attribute :location?, Types::Any
    attribute :department?, Types::Array
    attribute :faculty?, Types::Array
    attribute :sameAs?, Types::Array
    attribute :foundingDate?, Types::String
    attribute :identifier?, Types::Any
    attribute :parentOrganization?, Types::Any
    attribute :memberOf?, Types::Any
    attribute :founder?, Types::Any
    attribute :funder?, Types::Any
    attribute :award?, Types::String
    attribute :hasCredential?, Types::Any
    attribute :keywords?, Types::String
    attribute :educationalCredentialAwarded?, Types::Any
    attribute :numberOfStudents?, Types::Any
    attribute :campus?, Types::Any
  end
end
