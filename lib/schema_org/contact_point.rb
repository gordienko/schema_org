# frozen_string_literal: true

#
# Model the Schema.org `ContactPoint`.  See http://schema.org/ContactPoint
#
module SchemaOrg
  #
  # Model the Schema.org `ContactPoint`. See http://schema.org/ContactPoint
  #
  # The `ContactPoint` class represents contact information details in compliance with the Schema.org
  # `ContactPoint` type.
  # It inherits from `SchemaOrg::Base` and defines specific attributes associated with contact points.
  #
  # === Attributes
  #
  # - area_served?: (Array) - Optional. The geographic area where the contact point provides its services.
  # - available_language?: (Array) - Optional. Specifies the languages available for communication at the contact point.
  # - contact_option?: (String) - Optional. Indicates options for the contact point
  # (e.g., toll-free, hearing-impaired support).
  # - contact_type: (String) - Required. Describes the type of contact point
  # (e.g., customer service, technical support).
  # - telephone: (String) - Required. Provides the phone number associated with the contact point.
  class ContactPoint < Base
    attribute :area_served?, Types::Array
    attribute :available_language?, Types::Array
    attribute :contact_option?, Types::String
    attribute :contact_type, Types::String
    attribute :telephone, Types::String
  end
end
