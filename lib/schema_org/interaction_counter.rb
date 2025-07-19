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
  #
  class InteractionCounter < Base
    attribute :userInteractionCount, Types::Integer
    attribute :interactionType, Types::String
  end
end
