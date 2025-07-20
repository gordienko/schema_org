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
  # - brand?: (Organization) - Optional. The brand of the product.
  # - sku?: (String) - Optional. The Stock Keeping Unit, a merchant-specific identifier for the product.
  # - gtin?: (String) - Optional. Global Trade Item Number for the product (e.g., UPC, EAN, etc.)
  # - mpn?: (String) - Optional. The Manufacturer Part Number of the product.
  # - aggregateRating?: (AggregateRating) - Optional. The overall rating based on a collection of reviews.
  # - review?: (Types::Array) - Optional. Array of reviews for the product.
  # - weight?: (QuantitativeValue) - Optional. The weight of the product.
  # - height?: (QuantitativeValue) - Optional. The height of the product.
  # - width?: (QuantitativeValue) - Optional. The width of the product.
  # - depth?: (QuantitativeValue) - Optional. The depth of the product.
  # - color?: (String) - Optional. The color of the product.
  # - material?: (String) - Optional. The material of which the product is made.
  # - category?: (String) - Optional. A category for the product.
  # - isRelatedTo?: (Types::Array) - Optional. A pointer to another, related product.
  # - isSimilarTo?: (Types::Array) - Optional. A pointer to another product that is similar to this one.
  # - model?: (String) - Optional. The model of the product.
  # - productID?: (String) - Optional. The product identifier (e.g., ISBN, MPN, UPC, etc.).
  # - countryOfOrigin?: (String) - Optional. The country of origin of the product.
  # - availability?: (String) - Optional. The availability of the product (e.g., InStock, OutOfStock, etc.).
  # - additionalProperty?: (Types::Array) - Optional. Additional property for the product.
  # - audience?: (Types::Any) - Optional. An intended audience for a product.
  # - itemCondition?: (String) - Optional. The condition of the product (e.g., NewCondition, UsedCondition).
  # - manufacturer?: (Types::Any) - Optional. The manufacturer of the product.
  # - productionDate?: (Types::Date) - Optional. The date of production of the item.
  # - releaseDate?: (Types::Date) - Optional. The release date of the product.
  # - expirationDate?: (Types::Date) - Optional. The date the product expires.
  # - purchaseDate?: (Types::Date) - Optional. The date the product was purchased.
  # - award?: (Types::String) - Optional. An award won by or for this product.
  # - sameAs?: (Types::Array) - Optional. URLs to web pages that unambiguously identify this product.
  # - hasMerchantReturnPolicy?: (Types::Any) - Optional. Specifies a merchant return policy that applies to this product.
  # - nutritionInformation?: (Types::Any) - Optional. Nutritional information about the product, if applicable.
  # - slogan?: (Types::String) - Optional. A slogan or motto associated with the product.
  # - mainEntityOfPage?: (Types::String) - Optional. The main entity of a page where this product is featured.
  # - disambiguatingDescription?: (Types::String) - Optional. A sub property of description. A short description that disambiguates this product from others.
  class Product < Base
    # === required attributes
    attribute :name, Types::String

    # === optional attributes
    attribute :offers, AggregateOffer
    attribute :description?, Types::String
    attribute :image?, Types::Array
    attribute :url, Types::WebUrl
    attribute :brand?, Types::Any
    attribute :sku?, Types::String
    attribute :gtin?, Types::String
    attribute :mpn?, Types::String
    attribute :aggregateRating?, Types::Any
    attribute :review?, Types::Array
    attribute :weight?, Types::Any
    attribute :height?, Types::Any
    attribute :width?, Types::Any
    attribute :depth?, Types::Any
    attribute :color?, Types::String
    attribute :material?, Types::String
    attribute :category?, Types::String
    attribute :isRelatedTo?, Types::Array
    attribute :isSimilarTo?, Types::Array
    attribute :model?, Types::String
    attribute :productID?, Types::String
    attribute :countryOfOrigin?, Types::String
    attribute :availability?, Types::String
    attribute :additionalProperty?, Types::Array
    attribute :audience?, Types::Any
    attribute :itemCondition?, Types::String
    attribute :manufacturer?, Types::Any
    attribute :productionDate?, Types::Date
    attribute :releaseDate?, Types::Date
    attribute :expirationDate?, Types::Date
    attribute :purchaseDate?, Types::Date
    attribute :award?, Types::String
    attribute :sameAs?, Types::Array
    attribute :hasMerchantReturnPolicy?, Types::Any
    attribute :nutritionInformation?, Types::Any
    attribute :slogan?, Types::String
    attribute :mainEntityOfPage?, Types::String
    attribute :disambiguatingDescription?, Types::String
  end
end
