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
  end
end
