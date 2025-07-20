# frozen_string_literal: true

#
# Model the Schema.org `Vehicle`. See https://schema.org/Vehicle
#
module SchemaOrg
  #
  # Model the Schema.org `Vehicle`. See https://schema.org/Vehicle
  # A vehicle is a device that is designed or used to transport people or cargo over land, water, air, or through space.
  #
  # === Attributes
  #
  # - name: (String) - The name of the vehicle.
  # - description?: (String) - Optional. A description of the vehicle.
  # - url: (WebUrl) - URL of the vehicle information.
  # - brand?: (Types::Any) - Optional. The brand of the vehicle (Organization or String).
  # - model?: (Types::String) - Optional. The model of the vehicle.
  # - vehicleIdentificationNumber?: (Types::String) - Optional. The Vehicle Identification Number (VIN).
  # - manufacturer?: (Types::Any) - Optional. The manufacturer of the vehicle (Organization or String).
  # - productionDate?: (Types::String) - Optional. The date of production of the vehicle.
  # - purchaseDate?: (Types::String) - Optional. The date the vehicle was purchased.
  # - vehicleModelDate?: (Types::String) - Optional. The release date of a vehicle model (often used to differentiate versions).
  # - mileageFromOdometer?: (Types::Any) - Optional. The total distance traveled by the vehicle.
  # - vehicleEngine?: (Types::Any) - Optional. Information about the engine or engines of the vehicle.
  # - fuelType?: (Types::String) - Optional. The type of fuel used by the vehicle (e.g., "Gasoline", "Diesel", "Electric").
  # - fuelConsumption?: (Types::Any) - Optional. The amount of fuel consumed for traveling a particular distance or temporal duration.
  # - fuelCapacity?: (Types::Any) - Optional. The capacity of the fuel tank or fuel storage of the vehicle.
  # - numberOfDoors?: (Types::Integer) - Optional. The number of doors the vehicle has.
  # - numberOfAxles?: (Types::Integer) - Optional. The number of axles of the vehicle.
  # - numberOfAirbags?: (Types::String) - Optional. The number or type of airbags in the vehicle.
  # - seatingCapacity?: (Types::Integer) - Optional. The number of persons that can be seated in the vehicle.
  # - cargoVolume?: (Types::Any) - Optional. The available volume for cargo or luggage.
  # - vehicleTransmission?: (Types::String) - Optional. The type of transmission (e.g., "Automatic", "Manual", "CVT").
  # - driveWheelConfiguration?: (Types::String) - Optional. The drive wheel configuration (e.g., "FWD", "RWD", "4WD").
  # - color?: (Types::String) - Optional. The color of the vehicle.
  # - weight?: (Types::Any) - Optional. The weight of the vehicle.
  # - dateVehicleFirstRegistered?: (Types::String) - Optional. The date of the first registration of the vehicle.
  # - vehicleInteriorType?: (Types::String) - Optional. The type or material of the interior of the vehicle.
  # - vehicleInteriorColor?: (Types::String) - Optional. The color of the interior of the vehicle.
  # - knownVehicleDamages?: (Types::String) - Optional. A textual description of known damages.
  # - vehicleSpecialUsage?: (Types::String) - Optional. Indicates whether the vehicle has been used for special purposes, like commercial rental or taxi.
  # - speed?: (Types::Any) - Optional. The speed range of the vehicle.
  # - bodyType?: (Types::String) - Optional. The type of body of the vehicle (e.g., "Sedan", "SUV", "Pickup").
  # - steeringPosition?: (Types::String) - Optional. The position of the steering wheel (e.g., "LHD", "RHD").
  # - vehicleConfiguration?: (Types::String) - Optional. A short text indicating the configuration of the vehicle.
  # - offers?: (Types::Any) - Optional. An offer to provide this item (sales, rental, etc.).
  # - accelerationTime?: (Types::Any) - Optional. The time needed to accelerate the vehicle from a given start velocity to a given target velocity.
  # - emissionsCO2?: (Types::Integer) - Optional. The CO2 emissions in g/km.
  # - meetsEmissionStandard?: (Types::String) - Optional. Indicates that the vehicle meets the respective emission standard.
  # - payload?: (Types::Any) - Optional. The permitted weight of passengers and cargo, excluding the weight of the empty vehicle.
  # - tongueWeight?: (Types::Any) - Optional. The maximum weight that the vehicle can tow.
  # - trailerWeight?: (Types::Any) - Optional. The maximum weight that the vehicle can tow.
  # - wheelbase?: (Types::Any) - Optional. The distance between the centers of the front and rear wheels.
  # - numberOfPreviousOwners?: (Types::Integer) - Optional. The number of owners of the vehicle, including the current one.
  # - vehicleSpecialUsage?: (Types::String) - Optional. Indicates whether the vehicle has been used for special purposes,
  # like commercial rental, driving school, or was previously owned by a taxicab company.
  # - vehicleSeatingCapacity?: (Types::Integer) - Optional. The number of passengers that can be seated in the vehicle,
  # both in terms of the physical space available, and in terms of limitations set by law.
  # - images?: (Types::Array) - Optional. Images of the vehicle.
  # - vehicleHeight?: (Types::Any) - Optional. The height of the vehicle.
  # - vehicleWidth?: (Types::Any) - Optional. The width of the vehicle.
  # - vehicleLength?: (Types::Any) - Optional. The length of the vehicle.
  # - modelDate?: (Types::String) - Optional. The release date of a vehicle model (alternative to vehicleModelDate).
  # - roofLoad?: (Types::Any) - Optional. The permitted total weight of cargo and installations on top of the vehicle.
  # - loadingHeight?: (Types::Any) - Optional. The height of the cargo loading area.
  # - loadingLength?: (Types::Any) - Optional. The length of the cargo loading area.
  # - typeOfFuel?: (Types::String) - Optional. The type of fuel (alternative to fuelType).
  # - vehicleModelDesignation?: (Types::String) - Optional. The model designation or name given by the manufacturer.
  # - grossVehicleWeight?: (Types::Any) - Optional. The permitted total weight of the loaded vehicle, including passengers and cargo.
  # - trailerWeightMax?: (Types::Any) - Optional. The maximum weight that can be towed by the vehicle (alternative to trailerWeight).
  # - weightTotal?: (Types::Any) - Optional. The total weight of the vehicle, including passengers and cargo.
  # - acrissCode?: (Types::String) - Optional. The ACRISS Car Classification Code for vehicle rental/sharing categorization.
  # - callSign?: (Types::String) - Optional. A callsign, as used in broadcasting and radio communications to identify people, radio and TV stations, or vehicles.
  # - engineDisplacement?: (Types::Any) - Optional. The volume swept by all of the pistons inside the cylinders of an engine.
  # - enginePower?: (Types::Any) - Optional. The power of the engine, typically measured in horsepower or kilowatts.
  # - engineType?: (Types::String) - Optional. The type of engine, such as internal combustion, electric, etc.
  # - numberOfForwardGears?: (Types::Integer) - Optional. The number of forward gears in the transmission of the vehicle.
  # - numberOfRearSeats?: (Types::Integer) - Optional. The number of rear seats in the vehicle.
  # - torque?: (Types::Any) - Optional. The torque (turning force) of the engine, typically measured in newton meters (N m) or foot pounds.
  # - fuelEfficiency?: (Types::Any) - Optional. The distance traveled per unit of fuel used, typically measured in miles per gallon (mpg) or liters per 100 kilometers (L/100 km).
  # - hasEnergyConsumptionDetails?: (Types::Any) - Optional. Indicates whether the vehicle has energy consumption details.
  # - hasEnergyEfficiencyCategory?: (Types::String) - Optional. Defines the energy efficiency category of the vehicle according to various international systems.
  # - hasFuelCapacity?: (Types::Any) - Optional. The capacity of the fuel tank or reservoir of the vehicle (alternative to fuelCapacity).
  # - hasProductionDate?: (Types::String) - Optional. The date of production of the vehicle (alternative to productionDate).
  # - internetSecurityCameraPermission?: (Types::String) - Optional. Indicates permissions for security cameras usage in the vehicle.
  # - stopTime?: (Types::String) - Optional. The time when the vehicle stops operating (e.g., for public transit vehicles).
  # - vehicleConfiguration?: (Types::String) - Optional. A short text indicating the configuration of the vehicle.
  # - vehicleEngineExhaustEmission?: (Types::Any) - Optional. The emission levels of the vehicle's engine exhaust.
  #
  class Vehicle < Product
    # Наследуем от Product атрибуты: name, description?, url, brand?
    attribute :vehicleIdentificationNumber?, Types::String
    attribute :manufacturer?, Types::Any
    attribute :productionDate?, Types::String
    attribute :purchaseDate?, Types::String
    attribute :vehicleModelDate?, Types::String
    attribute :mileageFromOdometer?, Types::Any
    attribute :vehicleEngine?, Types::Any
    attribute :fuelType?, Types::String
    attribute :fuelConsumption?, Types::Any
    attribute :fuelCapacity?, Types::Any
    attribute :numberOfDoors?, Types::Integer
    attribute :numberOfAxles?, Types::Integer
    attribute :numberOfAirbags?, Types::String
    attribute :seatingCapacity?, Types::Integer
    attribute :cargoVolume?, Types::Any
    attribute :vehicleTransmission?, Types::String
    attribute :driveWheelConfiguration?, Types::String
    attribute :color?, Types::String
    attribute :weight?, Types::Any
    attribute :dateVehicleFirstRegistered?, Types::String
    attribute :vehicleInteriorType?, Types::String
    attribute :vehicleInteriorColor?, Types::String
    attribute :knownVehicleDamages?, Types::String
    attribute :speed?, Types::Any
    attribute :bodyType?, Types::String
    attribute :steeringPosition?, Types::String
    attribute :vehicleConfiguration?, Types::String
    attribute :accelerationTime?, Types::Any
    attribute :emissionsCO2?, Types::Integer
    attribute :meetsEmissionStandard?, Types::String
    attribute :payload?, Types::Any
    attribute :tongueWeight?, Types::Any
    attribute :trailerWeight?, Types::Any
    attribute :wheelbase?, Types::Any
    attribute :numberOfPreviousOwners?, Types::Integer
    attribute :vehicleSeatingCapacity?, Types::Integer
    attribute :images?, Types::Array
    attribute :vehicleHeight?, Types::Any
    attribute :vehicleWidth?, Types::Any
    attribute :vehicleLength?, Types::Any
    attribute :modelDate?, Types::String
    attribute :roofLoad?, Types::Any
    attribute :loadingHeight?, Types::Any
    attribute :loadingLength?, Types::Any
    attribute :typeOfFuel?, Types::String
    attribute :vehicleModelDesignation?, Types::String
    attribute :grossVehicleWeight?, Types::Any
    attribute :trailerWeightMax?, Types::Any
    attribute :weightTotal?, Types::Any
    attribute :acrissCode?, Types::String
    attribute :callSign?, Types::String
    attribute :engineDisplacement?, Types::Any
    attribute :enginePower?, Types::Any
    attribute :engineType?, Types::String
    attribute :numberOfForwardGears?, Types::Integer
    attribute :numberOfRearSeats?, Types::Integer
    attribute :torque?, Types::Any
    attribute :fuelEfficiency?, Types::Any
    attribute :hasEnergyConsumptionDetails?, Types::Any
    attribute :hasEnergyEfficiencyCategory?, Types::String
    attribute :hasFuelCapacity?, Types::Any
    attribute :hasProductionDate?, Types::String
    attribute :internetSecurityCameraPermission?, Types::String
    attribute :stopTime?, Types::String
    attribute :vehicleEngineExhaustEmission?, Types::Any
  end
end
