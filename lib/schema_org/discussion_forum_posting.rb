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
  # - comment?: (Array) - Optional. Captures comments related to the posting.
  # - commentCount?: (Integer) - Optional. Specifies the total number of comments associated with the posting.
  # - headline?: (String) - Optional. Represents the headline or title of the posting.
  # - image?: (Array) - Optional. Denotes any images associated with the posting.
  # - inLanguage?: (Array) - Optional. Indicates the language(s) in which the content is written.
  # - interactionStatistic?: (Array) - Optional. Captures metrics related to user interactions, such as views,
  # likes, or shares.
  # - mainEntityOfPage?: (String) - Optional. Identifies the primary entity described within the web page.
  # - text?: (String) - Optional. Represents the textual content of the posting.
  # - url?: (String) - Optional. Specifies the URL associated with the posting.
  class DiscussionForumPosting < Base
    # TODO: Allow for type Person or Organization
    attribute :author, Person
    # TODO: Allow for type Date or DateTime
    attribute :datePublished, Types::Date

    attribute :comment?, Types::Array
    attribute :commentCount?, Types::Integer
    attribute :headline?, Types::String
    attribute :image?, Types::Array
    attribute :inLanguage?, Types::Array
    attribute :interactionStatistic?, Types::Array
    attribute :mainEntityOfPage?, Types::String
    attribute :text?, Types::String
    attribute :url?, Types::WebUrl
  end
end
