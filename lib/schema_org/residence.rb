# frozen_string_literal: true

#
# Model the Schema.org `Residence`. See https://schema.org/Residence
#
module SchemaOrg
  # === Attributes
  #
  # - name: (String) - The name of the residence.
  # - description?: (String) - Optional. A description of the residence.
  # - url: (WebUrl) - URL of the residence information.
  # - address: (PostalAddress) - Physical address of the residence.
  # - numberOfRooms?: (Integer) - Optional. The number of rooms available in the residence.
  # - occupancy?: (QuantitativeValue) - Optional. The allowed total occupancy for the residence.
  # - floorLevel?: (String) - Optional. The floor level for an Accommodation in a multi-storey building.
  # - floorSize?: (QuantitativeValue) - Optional. The size of the floor (in square meters or square feet).
  # - numberOfBathroomsTotal?: (Integer) - Optional. The total number of bathrooms in the residence.
  # - numberOfBedrooms?: (Integer) - Optional. The number of bedrooms.
  # - petsAllowed?: (Boolean or String) - Optional. Indicates whether pets are allowed to enter the residence.
  # - yearBuilt?: (Integer) - Optional. The year the residence was built.
  # - amenityFeature?: (Array) - Optional. Features or amenities of the residence.
  # - availableThrough?: (String) - Optional. The date after which the residence is no longer available.
  # - accommodationCategory?: (String) - Optional. Category of the residence.
  # - tourBookingPage?: (WebUrl) - Optional. URL to a page for booking a tour of the residence.
  # - containsPlace?: (Place) - Optional. A place that is contained within this place.
  # - geo?: (GeoCoordinates) - Optional. The geo coordinates of the residence.
  # - maximumAttendeeCapacity?: (Integer) - Optional. The maximum capacity of attendees for the residence.
  # - permittedUsage?: (String) - Optional. The permitted usage of the residence.
  # - smokingAllowed?: (Boolean) - Optional. Indicates whether smoking is allowed in the residence.
  # - sameAs?: (String) - Optional. URL of a reference Web page that unambiguously indicates the item's identity.
  # - isAccessibleForFree?: (Types::Bool) - Optional. A flag to signal that the residence is accessible for free.
  # - energyEfficiencyRating?: (Types::Any) - Optional. The energy efficiency rating of the residence.
  # - availabilityStarts?: (Types::String) - Optional. The start date and time of the availability of the residence.
  # - availabilityEnds?: (Types::String) - Optional. The end date and time of the availability of the residence.
  # - faxNumber?: (Types::String) - Optional. The fax number of the residence.
  # - publicAccess?: (Types::Bool) - Optional. A flag to signal that the residence is open to public visitors.
  # - additionalProperty?: (Types::Array) - Optional. A property-value pair representing additional characteristics of the residence.
  # - isResidential?: (Types::Bool) - Optional. Indicates whether the residence is used for residential purposes.
  # - totalSpace?: (QuantitativeValue) - Optional. The total area of the residence, including all rooms and other spaces.
  # - layoutImage?: (Types::Any) - Optional. An image showing the floor plan or layout of the residence.
  # - leaseLength?: (Types::String) - Optional. The duration of the lease for the residence.
  # - maintenanceFee?: (Types::Any) - Optional. The regular fee charged for maintenance of the residence.
  #
  class Residence < Place
    # Наследуем от Place атрибуты: address (required), geo? (optional)

    # === optional attributes
    attribute :numberOfRooms?, Types::Integer
    attribute :occupancy?, QuantitativeValue
    attribute :floorLevel?, Types::String
    attribute :floorSize?, QuantitativeValue
    attribute :numberOfBathroomsTotal?, Types::Integer
    attribute :numberOfBedrooms?, Types::Integer
    attribute :petsAllowed?, Types::Any # Может быть Boolean или String
    attribute :yearBuilt?, Types::Integer
    attribute :amenityFeature?, Types::Array
    attribute :availableThrough?, Types::String
    attribute :accommodationCategory?, Types::String
    attribute :tourBookingPage?, Types::WebUrl
    attribute :containsPlace?, Place
    attribute :maximumAttendeeCapacity?, Types::Integer
    attribute :permittedUsage?, Types::String
    attribute :smokingAllowed?, Types::Bool
    attribute :sameAs?, Types::String
    attribute :isAccessibleForFree?, Types::Bool
    attribute :energyEfficiencyRating?, Types::Any
    attribute :availabilityStarts?, Types::String
    attribute :availabilityEnds?, Types::String
    attribute :faxNumber?, Types::String
    attribute :publicAccess?, Types::Bool
    attribute :additionalProperty?, Types::Array
    attribute :isResidential?, Types::Bool
    attribute :totalSpace?, QuantitativeValue
    attribute :layoutImage?, Types::Any
    attribute :leaseLength?, Types::String
    attribute :maintenanceFee?, Types::Any
  end
end
