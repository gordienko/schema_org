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
  # - name?: (String) - Optional. The name of the breadcrumb list for identification purposes.
  # - description?: (String) - Optional. A description of the breadcrumb list.
  # - disambiguatingDescription?: (String) - Optional. A sub property of description. Information to help disambiguate.
  # - itemListOrder?: (String) - Optional. The type of ordering for the list (e.g., 'Ascending', 'Descending').
  # - numberOfItems?: (Integer) - Optional. The number of items in the breadcrumb list.
  #
  # See also:
  # - Schema.org documentation for `BreadcrumbList`: https://schema.org/BreadcrumbList
  # - Google documentation on breadcrumbs: https://developers.google.com/search/docs/appearance/structured-data/breadcrumb
  #
  class BreadcrumbList < Base
    # === required attributes
    attribute :itemListElement, Types::Array

    # === optional attributes
    attribute :name?, Types::String
    attribute :description?, Types::String
    attribute :disambiguatingDescription?, Types::String
    attribute :itemListOrder?, Types::String
    attribute :numberOfItems?, Types::Integer
  end
end
