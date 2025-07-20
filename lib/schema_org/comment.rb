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
  # - about?: (Types::Any) - Optional. The subject matter of the comment.
  # - name?: (Types::String) - Optional. The name or title of the comment.
  # - parentItem?: (Types::Any) - Optional. The parent of this comment in a discussion thread.
  # - upvoteCount?: (Types::Integer) - Optional. The number of upvotes this comment has received.
  # - downvoteCount?: (Types::Integer) - Optional. The number of downvotes this comment has received.
  # - dateCreated?: (Types::Date) - Optional. The date on which the comment was created.
  # - dateModified?: (Types::Date) - Optional. The date on which the comment was most recently modified.
  # - discussionUrl?: (Types::WebUrl) - Optional. A link to the page containing the comments of the discussion thread.
  # - identifier?: (Types::Any) - Optional. An identifier for the comment.
  # - position?: (Types::Integer) - Optional. The position of the comment in a threaded discussion.
  # - sharedContent?: (Types::Any) - Optional. A CreativeWork such as an image, video, or audio clip shared as part of this comment.
  # - creator?: (Types::Any) - Optional. The creator/author of this comment (could be a Person or Organization).
  # - publishingPrinciples?: (Types::Any) - Optional. The publishing principles or content policies applicable to this comment.
  # - contentLocation?: (Types::Any) - Optional. The location depicted or described in the comment.
  # - contentRating?: (Types::Any) - Optional. Official rating of the comment, such as MPAA PG-13.
  # - accountablePerson?: (Types::Any) - Optional. Person accountable for the comment.
  # - aggregateRating?: (Types::Any) - Optional. The overall rating, based on a collection of reviews or ratings, of the comment.
  class Comment < Base
    # === required attributes
    attribute :author, Person
    attribute :datePublished, Types::Date

    # === optional attributes
    attribute :comment?, Types::Array
    attribute :creativeWorkStatus?, Types::String
    attribute :image?, Types::Array
    attribute :inLanguage?, Types::Array
    attribute :interactionStatistic?, Types::Array
    attribute :text?, Types::String
    attribute :url?, Types::WebUrl
    attribute :about?, Types::Any
    attribute :name?, Types::String
    attribute :parentItem?, Types::Any
    attribute :upvoteCount?, Types::Integer
    attribute :downvoteCount?, Types::Integer
    attribute :dateCreated?, Types::Date
    attribute :dateModified?, Types::Date
    attribute :discussionUrl?, Types::WebUrl
    attribute :identifier?, Types::Any
    attribute :position?, Types::Integer
    attribute :sharedContent?, Types::Any
    attribute :creator?, Types::Any
    attribute :publishingPrinciples?, Types::Any
    attribute :contentLocation?, Types::Any
    attribute :contentRating?, Types::Any
    attribute :accountablePerson?, Types::Any
    attribute :aggregateRating?, Types::Any
  end
end
