# frozen_string_literal: true

#
# Model the Schema.org `RealEstateListing`. See https://schema.org/RealEstateListing
#
module SchemaOrg
  #
  # Model the Schema.org `RealEstateListing`. See https://schema.org/RealEstateListing
  # A real estate listing.
  #
  # === Attributes
  #
  # - name: (String) - The name of the real estate listing.
  # - description?: (String) - Optional. A description of the real estate listing.
  # - url: (WebUrl) - URL of the real estate listing.
  # - datePosted?: (String) - Optional. Publication date of the listing.
  # - image?: (String or Array) - Optional. An image or images of the property.
  # - price?: (String or Number) - Optional. The price of the real estate property.
  # - priceCurrency?: (String) - Optional. The currency (in ISO 4217 format) of the price.
  # - address?: (PostalAddress) - Optional. Physical address of the property.
  # - numberOfRooms?: (Integer) - Optional. The number of rooms in the property.
  # - numberOfBathroomsTotal?: (Integer) - Optional. The total number of bathrooms in the property.
  # - floorSize?: (QuantitativeValue) - Optional. The floor size of the property.
  # - amenityFeature?: (Array) - Optional. Features or amenities of the property.
  # - yearBuilt?: (Integer) - Optional. The year the property was built.
  # - propertyType?: (String) - Optional. Type of the property (e.g., "Apartment", "House").
  # - availability?: (String) - Optional. Availability status (e.g., "InStock", "SoldOut").
  # - broker?: (Organization or Person) - Optional. A broker that manages the listing.
  # - dateSold?: (String) - Optional. The date the real estate property was sold.
  # - locationMap?: (String) - Optional. URL to a map of the property's location.
  # - propertyStatus?: (String) - Optional. Status of the property (e.g., "Active", "Pending", "Sold").
  # - sameAs?: (String) - Optional. URL of a reference Web page that unambiguously indicates the item's identity.
  # - leaseLength?: (Types::String) - Optional. The duration of the lease.
  # - leaseEndDate?: (Types::String) - Optional. The end date of the lease.
  # - maintenanceFee?: (Types::Any) - Optional. Fee charged for maintenance services.
  # - homeownerAssociation?: (Types::Any) - Optional. Information about the homeowner association.
  # - parking?: (Types::Any) - Optional. Information about the parking facilities.
  # - petsAllowed?: (Types::Boolean) - Optional. Indicates whether pets are allowed.
  # - totalSpace?: (QuantitativeValue) - Optional. Total space of the property, including all areas.
  # - lotSize?: (QuantitativeValue) - Optional. The size of the land on which the property is located.
  # - heatingSystem?: (Types::String) - Optional. The type of heating system.
  # - coolingSystem?: (Types::String) - Optional. The type of cooling system.
  # - identifier?: (Types::String) - Optional. An identifier for the property, like MLS number.
  # - additionalProperty?: (Types::Array) - Optional. Additional properties not covered by standard attributes.
  # - energyRating?: (Types::Any) - Optional. Energy efficiency rating of the property.
  # - taxRate?: (Types::Float) - Optional. The property tax rate.
  # - geo?: (Types::Any) - Optional. The geo coordinates of the property.
  # - offer?: (Types::Any) - Optional. An offer or offers related to the property.
  # - taxID?: (Types::String) - Optional. The tax identifier for the property.
  # - disambiguatingDescription?: (Types::String) - Optional. A sub property of description. A short description that disambiguates the listing.
  #
  class RealEstateListing < Thing
    # Наследуем от Thing атрибуты: name, description?, url

    # === optional attributes
    attribute :datePosted?, Types::String
    attribute :image?, Types::Any # Может быть строкой или массивом строк
    attribute :price?, Types::Any # Может быть строкой или числом
    attribute :priceCurrency?, Types::String
    attribute :address?, PostalAddress
    attribute :numberOfRooms?, Types::Integer
    attribute :numberOfBathroomsTotal?, Types::Integer
    attribute :floorSize?, QuantitativeValue
    attribute :amenityFeature?, Types::Array
    attribute :yearBuilt?, Types::Integer
    attribute :propertyType?, Types::String
    attribute :availability?, Types::String
    attribute :broker?, Types::Any # Может быть Organization или Person
    attribute :dateSold?, Types::String
    attribute :locationMap?, Types::String
    attribute :propertyStatus?, Types::String
    attribute :sameAs?, Types::String
    attribute :leaseLength?, Types::String
    attribute :leaseEndDate?, Types::String
    attribute :maintenanceFee?, Types::Any
    attribute :homeownerAssociation?, Types::Any
    attribute :parking?, Types::Any
    attribute :petsAllowed?, Types::Bool
    attribute :totalSpace?, QuantitativeValue
    attribute :lotSize?, QuantitativeValue
    attribute :heatingSystem?, Types::String
    attribute :coolingSystem?, Types::String
    attribute :identifier?, Types::String
    attribute :additionalProperty?, Types::Array
    attribute :energyRating?, Types::Any
    attribute :taxRate?, Types::Float
    attribute :geo?, Types::Any
    attribute :offer?, Types::Any
    attribute :taxID?, Types::String
    attribute :disambiguatingDescription?, Types::String
  end
end
