# frozen_string_literal: true

#
# Model the Schema.org `Thing > Intangible > StructuredValue > InteractionCounter`.
# See https://schema.org/InteractionCounter
#
module SchemaOrg
  #
  # Model the Schema.org `Thing > Intangible > StructuredValue > InteractionCounter`.
  # See https://schema.org/InteractionCounter
  #
  # The `InteractionCounter` class is used to represent the number of user interactions of a particular type
  # on a piece of content or a web page.
  #
  # === Attributes
  #
  # - userInteractionCount: (Integer) - The number of interactions by users.
  # - interactionType: (String) - A specific type of interaction, typically expressed as Schema.org interaction types
  #   (e.g., `https://schema.org/LikeAction` or `https://schema.org/CommentAction`). This attribute describes the kind
  #   of interaction being counted.
  # - interactionService?: (Types::Any) - Optional. The WebSite or SoftwareApplication where the interactions occurred.
  # - startTime?: (Types::DateTime) - Optional. The startTime of the interaction.
  # - endTime?: (Types::DateTime) - Optional. The endTime of the interaction.
  # - location?: (Types::Any) - Optional. The location where the interaction occurred.
  # - name?: (Types::String) - Optional. The name of the interaction counter.
  # - description?: (Types::String) - Optional. A description of the interaction counter.
  # - potentialAction?: (Types::Any) - Optional. Indicates a potential Action that describes an idealized action
  #   in which this interaction would be an 'object'.
  # - url?: (Types::WebUrl) - Optional. URL of the item.
  #
  class InteractionCounter < Base
    attribute :userInteractionCount, Types::Integer
    attribute :interactionType, Types::String
    attribute :interactionService?, Types::Any
    attribute :startTime?, Types::DateTime
    attribute :endTime?, Types::DateTime
    attribute :location?, Types::Any
    attribute :name?, Types::String
    attribute :description?, Types::String
    attribute :potentialAction?, Types::Any
    attribute :url?, Types::WebUrl
  end
end
