# frozen_string_literal: true

#
# Model the Schema.org `PostalAddress`. See https://schema.org/PostalAddress
#
module SchemaOrg
  #
  # Model the Schema.org `PostalAddress`. See https://schema.org/PostalAddress
  #
  # === Attributes
  #
  # - addressCountry: (String) - The country
  # - addressLocality: (String) - The locality (such as city or town)
  # - addressRegion: (String) - The region (such as state or province)
  # - streetAddress: (String) - The street address
  # - postalCode?: (String) - Optional. The postal code (e.g., zip code)
  # - postOfficeBoxNumber?: (String) - Optional. The post office box number
  # - addressType?: (String) - Optional. The type of address (e.g., residential, business)
  # - name?: (String) - Optional. The name associated with the address
  # - telephone?: (String) - Optional. The telephone number associated with the address
  # - email?: (String) - Optional. The email address associated with the address
  # - faxNumber?: (String) - Optional. The fax number associated with the address
  # - areaServed?: (String) - Optional. The geographic area where the address is served
  # - contactType?: (String) - Optional. The type of contact, e.g., 'customer service', 'sales'
  #
  class PostalAddress < Base
    # === required attributes
    attribute :addressCountry, Types::String
    attribute :addressLocality, Types::String
    attribute :addressRegion, Types::String
    attribute :streetAddress, Types::String

    # === optional attributes
    attribute :postalCode?, Types::String
    attribute :postOfficeBoxNumber?, Types::String
    attribute :addressType?, Types::String
    attribute :name?, Types::String
    attribute :telephone?, Types::String
    attribute :email?, Types::String
    attribute :faxNumber?, Types::String
    attribute :areaServed?, Types::String
    attribute :contactType?, Types::String
  end
end
