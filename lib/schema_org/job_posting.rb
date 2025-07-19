# frozen_string_literal: true

#
# Model the Schema.org `JobPosting`.  See https://schema.org/JobPosting
#
module SchemaOrg
  # === Attributes
  #
  # - title: (String) - The title of the job posting
  # - description: (String) - The full description of the job
  # - datePosted: (String) - The date when the job posting was published
  # - validThrough?: (String) - Optional. The date after which the job posting is no longer valid
  # - employmentType?: (String) - Optional. Type of employment (e.g. full-time, part-time, contract)
  # - hiringOrganization: (String) - Organization offering the job position
  # - jobLocation?: (String) - Optional. The location where the job is based
  # - baseSalary?: (Integer) - Optional. The base salary of the job
  # - salaryCurrency?: (String) - Optional. The currency used for baseSalary (in ISO 4217 format)
  # - experienceRequirements?: (String) - Optional. Description of required work experience
  # - qualifications?: (String) - Optional. Required educational or professional qualifications
  # - responsibilities?: (String) - Optional. Primary responsibilities and duties for the position
  # - skills?: (String) - Optional. Skills and competencies required for the position
  # - workHours?: (String) - Optional. Typical working hours for the position
  # - industry?: (String) - Optional. The industry associated with the job position
  #
  class JobPosting < Base
    attribute :title, Types::String
    attribute :description, Types::String
    attribute :datePosted, Types::String
    attribute :validThrough?, Types::String
    attribute :employmentType?, Types::String
    attribute :hiringOrganization, Types::String
    attribute :jobLocation?, Types::String
    attribute :baseSalary?, Types::Integer
    attribute :salaryCurrency?, Types::String
    attribute :experienceRequirements?, Types::String
    attribute :qualifications?, Types::String
    attribute :responsibilities?, Types::String
    attribute :skills?, Types::String
    attribute :workHours?, Types::String
    attribute :industry?, Types::String
  end
end
