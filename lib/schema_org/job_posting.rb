# frozen_string_literal: true

#
# Model the Schema.org `JobPosting`.  See https://schema.org/JobPosting
#
module SchemaOrg
  #
  # Model the Schema.org `JobPosting`. See https://schema.org/JobPosting
  #
  # === Attributes
  #
  # - title: (String) - The title of the job posting
  # - description: (String) - The full description of the job
  # - datePosted: (String) - The date when the job posting was published
  # - validThrough?: (String) - Optional. The date after which the job posting is no longer valid
  # - employmentType?: (String) - Optional. Type of employment (e.g. full-time, part-time, contract)
  # - hiringOrganization: (Organization) - Organization offering the job position
  # - jobLocation?: (Place) - Optional. The location where the job is based
  # - baseSalary?: (MonetaryAmount) - Optional. The base salary of the job
  # - experienceRequirements?: (OccupationalExperienceRequirements) - Optional. Description of required work experience
  # - identifier?: (PropertyValue) - Optional. The identifier property represents any kind of identifier
  # - industry?: (Types::String) - Optional. The industry associated with the job position
  # - sameAs?: (Types::String) - Optional. URL of a reference Web page that unambiguously indicates the item's identity
  # - qualifications?: (Types::String) - Optional. Required educational or professional qualifications
  # - responsibilities?: (Types::String) - Optional. Primary responsibilities and duties for the position
  # - skills?: (Types::String) - Optional. Skills and competencies required for the position
  # - workHours?: (Types::String) - Optional. Typical working hours for the position
  # - jobBenefits?: (Types::String) - Optional. Description of benefits associated with the job
  # - jobStartDate?: (Types::Date) - Optional. The start date of the job
  # - educationRequirements?: (Types::String) - Optional. Educational background needed for the position
  # - applicantLocationRequirements?: (Types::Any) - Optional. The location(s) applicants can apply from (usually for telecommuting jobs)
  # - jobLocationType?: (Types::String) - Optional. A description of the job location (e.g. TELECOMMUTE for telecommute jobs)
  # - directApply?: (Types::Boolean) - Optional. Indicates whether the job application can be completed directly on the hiring website
  # - incentiveCompensation?: (Types::String) - Optional. Description of bonus and commission compensation aspects of the job
  # - occupationalCategory?: (Types::String) - Optional. A category describing the job, preferably using a term from a taxonomy
  # - physicalRequirement?: (Types::String) - Optional. A description of physical activity associated with the job
  # - securityClearanceRequirement?: (Types::String) - Optional. A description of any security clearance requirements of the job
  # - sensoryRequirement?: (Types::String) - Optional. A description of any sensory requirements for the job
  # - specialCommitments?: (Types::String) - Optional. Any special commitments associated with this job posting
  # - applicantRequirements?: (Types::String) - Optional. Requirements for applicants for the job
  # - eligibilityToWorkRequirement?: (Types::String) - Optional. The legal requirements such as citizenship, visa and other documentation required for eligibility to work
  #
  class JobPosting < Base
    # === required attributes
    attribute :title, Types::String
    attribute :description, Types::String
    attribute :datePosted, Types::String
    attribute :hiringOrganization, Organization

    # === optional attributes
    attribute :validThrough?, Types::String
    attribute :employmentType?, Types::String
    attribute :jobLocation?, Place
    attribute :baseSalary?, MonetaryAmount
    attribute :experienceRequirements?, OccupationalExperienceRequirements
    attribute :identifier?, PropertyValue
    attribute :industry?, Types::String
    attribute :sameAs?, Types::String
    attribute :qualifications?, Types::String
    attribute :responsibilities?, Types::String
    attribute :skills?, Types::String
    attribute :workHours?, Types::String
    attribute :jobBenefits?, Types::String
    attribute :jobStartDate?, Types::Date
    attribute :educationRequirements?, Types::String
    attribute :applicantLocationRequirements?, Types::Any
    attribute :jobLocationType?, Types::String
    attribute :directApply?, Types::Bool
    attribute :incentiveCompensation?, Types::String
    attribute :occupationalCategory?, Types::String
    attribute :physicalRequirement?, Types::String
    attribute :securityClearanceRequirement?, Types::String
    attribute :sensoryRequirement?, Types::String
    attribute :specialCommitments?, Types::String
    attribute :applicantRequirements?, Types::String
    attribute :eligibilityToWorkRequirement?, Types::String
  end
end
