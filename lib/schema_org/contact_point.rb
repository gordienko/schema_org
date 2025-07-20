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
  # - areaServed?: (Array) - Optional. The geographic area where the contact point provides its services.
  # - availableLanguage?: (Array) - Optional. Specifies the languages available for communication at the contact point.
  # - contactOption?: (String) - Optional. Indicates options for the contact point
  # (e.g., toll-free, hearing-impaired support).
  # - contactType: (String) - Required. Describes the type of contact point
  # (e.g., customer service, technical support).
  # - telephone: (String) - Required. Provides the phone number associated with the contact point.
  # - email?: (Types::String) - Optional. Email address for the contact point.
  # - faxNumber?: (Types::String) - Optional. The fax number associated with the contact point.
  # - hoursAvailable?: (Types::Any) - Optional. The hours during which this contact point is available.
  # - productSupported?: (Types::Any) - Optional. The product or service this contact point is related to or supports.
  # - serviceArea?: (Types::Any) - Optional. The geographic area where the service provided by this contact point is available.
  # - name?: (Types::String) - Optional. The name of the contact point.
  # - description?: (Types::String) - Optional. A description of the contact point.
  # - disambiguatingDescription?: (Types::String) - Optional. A sub property of description to help distinguish from other similar items.
  # - identifier?: (Types::Any) - Optional. The identifier property represents any kind of identifier for the contact point.
  # - url?: (Types::WebUrl) - Optional. URL of the specific contact point.
  # - sameAs?: (Types::Array) - Optional. URL of a reference Web page that unambiguously indicates the contact point.
  class ContactPoint < Base
    attribute :areaServed?, Types::Array
    attribute :availableLanguage?, Types::Array
    attribute :contactOption?, Types::String
    attribute :contactType, Types::String
    # === required attributes
    attribute :telephone, Types::String

    # === optional attributes
    attribute :email?, Types::String
    attribute :faxNumber?, Types::String
    attribute :hoursAvailable?, Types::Any
    attribute :productSupported?, Types::Any
    attribute :serviceArea?, Types::Any
    attribute :name?, Types::String
    attribute :description?, Types::String
    attribute :disambiguatingDescription?, Types::String
    attribute :identifier?, Types::Any
    attribute :url?, Types::WebUrl
    attribute :sameAs?, Types::Array
  end
end
