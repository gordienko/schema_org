# frozen_string_literal: true

#
# Model the Schema.org `Event`.  See https://schema.org/Event
#
module SchemaOrg
  # === Attributes
  #
  # - name: (String) - The name of the event
  # - startDate: (Date) - The start date and time of the event in ISO 8601 format
  # - endDate: (Date) - The end date and time of the event in ISO 8601 format
  # - description?: (String) - Optional. A description of the event
  # - location?: (String) - Optional. The location where the event is happening
  # - organizer?: (String) - Optional. The organizer of the event
  # - url?: (String) - Optional. URL providing more details about the event
  # - image?: (String) - Optional. URL pointing to an image of the event
  # - performer?: (Types::Any) - Optional. Performer or performers of the event
  # - attendee?: (Types::Any) - Optional. Person or organization attending the event
  # - eventAttendanceMode?: (Types::String) - Optional. Indicates whether the event is online, offline, or mixed
  # - eventStatus?: (Types::String) - Optional. Status of the event (scheduled, cancelled, etc.)
  # - offers?: (Types::Any) - Optional. An offer to sell tickets or provide entry to the event
  # - eventSchedule?: (Types::Any) - Optional. Associates the event with a schedule
  # - doorTime?: (Types::DateTime) - Optional. The time the doors open
  # - maximumAttendeeCapacity?: (Types::Integer) - Optional. The maximum number of attendees the event can accommodate
  # - previousStartDate?: (Types::Date) - Optional. The originally scheduled start date/time for a rescheduled event
  # - recordedIn?: (Types::Any) - Optional. CreativeWork that records this event
  # - remainingAttendeeCapacity?: (Types::Integer) - Optional. The number of attendee places still available
  # - superEvent?: (Types::Any) - Optional. An event that this event is a part of
  # - subEvent?: (Types::Array) - Optional. Events that are a part of this event
  # - typicalAgeRange?: (Types::String) - Optional. The typical age range of the audience (e.g., "7-9", "18+")
  #
  class Event < Base
    attribute :name, Types::String
    attribute :startDate, Types::Date
    attribute :endDate, Types::Date
    attribute :description?, Types::String
    attribute :location?, Types::String
    attribute :organizer?, Types::String
    attribute :url?, Types::WebUrl
    attribute :image?, Types::String
    attribute :performer?, Types::Any
    attribute :attendee?, Types::Any
    attribute :eventAttendanceMode?, Types::String
    attribute :eventStatus?, Types::String
    attribute :offers?, Types::Any
    attribute :eventSchedule?, Types::Any
    attribute :doorTime?, Types::DateTime
    attribute :maximumAttendeeCapacity?, Types::Integer
    attribute :previousStartDate?, Types::Date
    attribute :recordedIn?, Types::Any
    attribute :remainingAttendeeCapacity?, Types::Integer
    attribute :superEvent?, Types::Any
    attribute :subEvent?, Types::Array
    attribute :typicalAgeRange?, Types::String
  end
end
