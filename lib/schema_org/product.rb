# frozen_string_literal: true

#
# Model the Schema.org `Thing > Product`.  See https://schema.org/Product
#
module SchemaOrg
  #
  # Model the Schema.org `Thing > Product`. See https://schema.org/Product
  #
  # The `Product` class represents a product, which is any instance of an item or service
  # that can be offered for sale, including both physical goods and services.
  # This is a specialized implementation of the Schema.org object structure.
  #
  # === Attributes
  #
  # - description?: (String) - Optional. A text description of the product.
  # - image?: (Array) - Optional. An array of image URIs or visual representations related to the product.
  # - name: (String) - Required. The name of the product.
  # - offers: (AggregateOffer) - Required. Pricing and offer details related to the product, represented
  # as an `AggregateOffer`.
  # - url: (String) - Required. Specifies the URL of the product.
  class Product < Base
    attribute :description?, Types::String
    attribute :image?, Types::Array
    attribute :name, Types::String
    attribute :offers, AggregateOffer
    attribute :url, Types::WebUrl
  end
end
