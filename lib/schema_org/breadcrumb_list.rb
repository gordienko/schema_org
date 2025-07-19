# frozen_string_literal: true

#
# Model the Google / Schema.org `BreadcrumbList`.
#
# The intent is to primarily support Google's BreadcrumbList. Properties
# from Schema.org are welcome if desired.
#
# See https://developers.google.com/search/docs/appearance/structured-data/breadcrumb
# and https://schema.org/BreadcrumbList
#
module SchemaOrg
  #
  # Model the Schema.org `BreadcrumbList`.
  #
  # This class represents a `BreadcrumbList`, as defined by Schema.org,
  # used to structure breadcrumb navigation metadata for websites.
  # Breadcrumb navigation helps users and search engines understand
  # the hierarchy and structure of a website's content.
  #
  # === Attributes
  #
  # - itemListElement: (Array) - Represents a collection of breadcrumb items, typically a sequence of links
  #   leading to the current content item.
  #
  # See also:
  # - Schema.org documentation for `BreadcrumbList`: https://schema.org/BreadcrumbList
  # - Google documentation on breadcrumbs: https://developers.google.com/search/docs/appearance/structured-data/breadcrumb
  #
  class BreadcrumbList < Base
    attribute :itemListElement, Types::Array
  end
end
