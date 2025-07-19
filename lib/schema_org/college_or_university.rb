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
  #
  class CollegeOrUniversity < Base
    attribute :name, Types::String
    attribute :url?, Types::WebUrl
  end
end
