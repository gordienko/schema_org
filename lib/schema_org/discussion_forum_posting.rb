# frozen_string_literal: true

#
# Model the Schema.org `Thing > CreativeWork > Article > SocialMediaPosting > DiscussionForumPosting`.
# See https://schema.org/DiscussionForumPosting
#
module SchemaOrg
  #
  # Model the Schema.org `Thing > CreativeWork > Article > SocialMediaPosting > DiscussionForumPosting`.
  # See https://schema.org/DiscussionForumPosting for more details about the properties.
  #
  # DiscussionForumPosting represents content related to postings or articles typically found in online
  # discussion forums.
  # It extends Schema.org's `SocialMediaPosting` and includes attributes for metadata and descriptive
  # fields such as comments,
  # publication dates, and headline information, making it suitable for representing user-generated posts.
  #
  # === Attributes
  #
  # - author: (Person) - Identifies the author of the posting. May support types such as Person or Organization
  # in the future.
  # - datePublished: (Date) - Indicates the publication date of the posting.
  # May support DateTime in upcoming extensions.
  # - articleBody?: (String) - Optional. The actual body text content of the forum posting.
  # - articleSection?: (String) - Optional. Section or category of the forum to which the posting belongs.
  # - comment?: (Array) - Optional. Captures comments related to the posting.
  # - commentCount?: (Types::Integer) - Optional. Specifies the total number of comments associated with the posting.
  # - headline?: (Types::String) - Optional. Represents the headline or title of the posting.
  # - image?: (Types::Array) - Optional. Denotes any images associated with the posting.
  # - inLanguage?: (Types::Array) - Optional. Indicates the language(s) in which the content is written.
  # - interactionStatistic?: (Types::Array) - Optional. Captures metrics related to user interactions, such as views,
  # likes, or shares.
  # - mainEntityOfPage?: (Types::String) - Optional. Identifies the primary entity described within the web page.
  # - text?: (Types::String) - Optional. Represents the textual content of the posting.
  # - url?: (Types::WebUrl) - Optional. Specifies the URL associated with the posting.
  # - sharedContent?: (Types::Any) - Optional. Indicates content that has been shared as part of the posting.
  # - discussionUrl?: (Types::WebUrl) - Optional. A link to the page containing the comments of the discussion thread.
  # - dateCreated?: (Types::Date) - Optional. The date on which the posting was created.
  # - dateModified?: (Types::Date) - Optional. The date on which the posting was most recently modified.
  # - publisher?: (Types::Any) - Optional. The publisher of the posting (Person or Organization).
  # - keywords?: (Types::String) - Optional. Keywords or tags used to describe the content of the posting.
  # - position?: (Types::Integer) - Optional. The position of the posting in a thread or series.
  # - contentLocation?: (Types::Any) - Optional. The location depicted or described in the posting.
  # - contentRating?: (Types::Any) - Optional. Official rating of the posting content.
  # - isPartOf?: (Types::Any) - Optional. Indicates a forum, thread, or other entity of which this posting is a part.
  class DiscussionForumPosting < Base
    # TODO: Allow for type Person or Organization
    attribute :author, Person
    # TODO: Allow for type Date or DateTime
    attribute :datePublished, Types::Date

    attribute :articleBody?, Types::String
    attribute :articleSection?, Types::String
    attribute :comment?, Types::Array
    attribute :commentCount?, Types::Integer
    attribute :headline?, Types::String
    attribute :image?, Types::Array
    attribute :inLanguage?, Types::Array
    attribute :interactionStatistic?, Types::Array
    attribute :mainEntityOfPage?, Types::String
    attribute :text?, Types::String
    attribute :url?, Types::WebUrl
    attribute :sharedContent?, Types::Any
    attribute :discussionUrl?, Types::WebUrl
    attribute :dateCreated?, Types::Date
    attribute :dateModified?, Types::Date
    attribute :publisher?, Types::Any
    attribute :keywords?, Types::String
    attribute :position?, Types::Integer
    attribute :contentLocation?, Types::Any
    attribute :contentRating?, Types::Any
    attribute :isPartOf?, Types::Any
  end
end
