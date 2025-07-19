# frozen_string_literal: true

#
# Model the Schema.org `Thing > SearchAction`.  See http://schema.org/SearchAction
#
module SchemaOrg
  #
  # Model the Schema.org `Thing > SearchAction`. See http://schema.org/SearchAction
  #
  # Represents a search action where a specific query input is used to interact
  # with a search target.
  #
  # === Attributes
  #
  # - query_input: (String) - Required. Represents the input query for the search.
  # - target: (String) - Required. Specifies the target location or endpoint where the search is performed.
  #
  class SearchAction < Base
    attribute :query_input, Types::String
    attribute :target, Types::String
  end
end
