# frozen_string_literal: true

#
# Model the Schema.org `Thing > CreativeWork > Comment`.
# See https://schema.org/Comment
#
module SchemaOrg
  #
  # Represents the Schema.org class `Comment`, which extends the `CreativeWork` class.
  # See https://schema.org/Comment
  #
  # === Attributes
  #
  # - author: (Person) - The author of the comment.
  # - datePublished: (Date) - The date when the comment was published.
  # - comment?: (Array) - A list of responses or additional comments.
  # - creativeWorkStatus?: (String) - The status indicating the creative work's stage (e.g., draft, published).
  # - image?: (Array) - List of images associated with the comment.
  # - inLanguage?: (Array) - Specifies the language(s) of the content in the comment.
  # - interactionStatistic?: (Array) - Statistical details about interactions with the content (e.g., views, likes).
  # - text?: (String) - The main textual content of the comment.
  # - url?: (String) - URL referencing the comment.
  class Comment < Base
    attribute :author, Person
    attribute :datePublished, Types::Date

    attribute :comment?, Types::Array
    attribute :creativeWorkStatus?, Types::String
    attribute :image?, Types::Array
    attribute :inLanguage?, Types::Array
    attribute :interactionStatistic?, Types::Array
    attribute :text?, Types::String
    attribute :url?, Types::WebUrl
  end
end
