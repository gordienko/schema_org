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
  # - result?: (Types::Any) - Optional. The result of the search action.
  # - query?: (Types::String) - Optional. The specific query used for the search.
  # - object?: (Types::Any) - Optional. The object upon which the action is carried out.
  # - potentialAction?: (Types::Any) - Optional. Indicates a potential action that can be performed.
  # - actionStatus?: (Types::String) - Optional. Indicates the status of the action (e.g., CompletedActionStatus).
  # - agent?: (Types::Any) - Optional. The entity that carried out the action.
  # - endTime?: (Types::String) - Optional. The time the action was completed.
  # - error?: (Types::Any) - Optional. For failed actions, describes the error that occurred.
  # - instrument?: (Types::Any) - Optional. The object that helped the agent perform the action.
  # - location?: (Types::Any) - Optional. The location where the action occurred.
  # - startTime?: (Types::String) - Optional. The time the action began.
  # - url?: (Types::WebUrl) - Optional. URL of the action.
  # - name?: (Types::String) - Optional. The name of the search action.
  # - description?: (Types::String) - Optional. A description of the search action.
  # - disambiguatingDescription?: (Types::String) - Optional. A sub-property of description to help disambiguate.
  # - identifier?: (Types::String) - Optional. An identifier for the search action.
  # - sameAs?: (Types::WebUrl) - Optional. URL of a reference Web page that unambiguously indicates the identity.
  # - alternateName?: (Types::String) - Optional. An alias for the search action.
  #
  class SearchAction < Base
    attribute :queryInput, Types::String
    attribute :target, Types::String
    attribute :result?, Types::Any
    attribute :query?, Types::String
    attribute :object?, Types::Any
    attribute :potentialAction?, Types::Any
    attribute :actionStatus?, Types::String
    attribute :agent?, Types::Any
    attribute :endTime?, Types::String
    attribute :error?, Types::Any
    attribute :instrument?, Types::Any
    attribute :location?, Types::Any
    attribute :startTime?, Types::String
    attribute :url?, Types::WebUrl
    attribute :name?, Types::String
    attribute :description?, Types::String
    attribute :disambiguatingDescription?, Types::String
    attribute :identifier?, Types::String
    attribute :sameAs?, Types::WebUrl
    attribute :alternateName?, Types::String
  end
end
