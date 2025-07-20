# frozen_string_literal: true

#
# Model the Schema.org `Thing > CreativeWork > WebSite`.
# @See http://schema.org/WebSite
#
module SchemaOrg
  #
  # Model the Schema.org `Thing > CreativeWork > WebSite`.
  #
  # The `WebSite` class represents a website, using structured data compliant with Schema.org's specifications.
  #
  # === Attributes
  #
  # - `name` (String): The name of the website.
  # - `url` (String): The URL of the website.
  # - `potential_action?` (SearchAction, optional): Specifies a potential action that can be performed on the website,
  # such as a `SearchAction`.
  # - `description?` (String, optional): A description of the website.
  # - `publisher?` (Types::Any, optional): The publisher of the website, typically an Organization or Person.
  # - `author?` (Types::Any, optional): The author of the website, typically an Organization or Person.
  # - `copyrightYear?` (Types::Integer, optional): The year during which the claimed copyright was first asserted for the website.
  # - `copyrightHolder?` (Types::Any, optional): The party holding the legal copyright to the website.
  # - `inLanguage?` (Types::String, optional): The language of the website. Use one of the language codes from the IETF BCP 47 standard.
  # - `dateCreated?` (Types::String, optional): The date on which the website was created.
  # - `dateModified?` (Types::String, optional): The date on which the website was most recently modified.
  # - `datePublished?` (Types::String, optional): The date on which the website was published.
  # - `keywords?` (Types::String, optional): Keywords or tags used to describe the website.
  # - `isPartOf?` (Types::Any, optional): Indicates a CreativeWork that this website is a part of.
  # - `hasPart?` (Types::Array, optional): Indicates a CreativeWork that is part of this website.
  # - `license?` (Types::WebUrl, optional): A license document that applies to this website, typically indicated by URL.
  # - `image?` (Types::Any, optional): An image of the website.
  # - `sameAs?` (Types::Array, optional): URLs of reference web pages that identify a website or entity.
  # - `alternateName?` (Types::String, optional): An alias for the website.
  # - `mainEntity?` (Types::Any, optional): The main entity described by the website.
  # - `identifier?` (Types::String, optional): The identifier property represents any kind of identifier for the website.
  # - `issn?` (Types::String, optional): The International Standard Serial Number (ISSN) that identifies this serial publication.
  # - `schemaVersion?` (Types::Any, optional): Indicates (by URL or string) a particular version of a schema used in the website.
  # - `publishingPrinciples?` (Types::Any, optional): The editorial principles of the website publisher.
  # - `about?` (Types::Any, optional): The subject matter of the website.
  # - `isFamilyFriendly?` (Types::Bool, optional): Indicates whether this website is suitable for a family audience.
  # - `audience?` (Types::Any, optional): An intended audience for the website.
  # - `award?` (Types::String, optional): An award won by or for this website.
  # - `accessibilityAPI?` (Types::String, optional): Indicates that the website is compatible with the referenced accessibility API.
  # - `accessibilityControl?` (Types::String, optional): Identifies input methods that are sufficient to control the website.
  # - `accessibilityFeature?` (Types::String, optional): Content features of the website, such as accessible media, alternatives and supported enhancements.
  # - `accessibilityHazard?` (Types::String, optional): A characteristic of the website that is physiologically dangerous to some users.
  # - `alternativeHeadline?` (Types::String, optional): A secondary title of the website.
  # - `temporal?` (Types::String, optional): The temporality of the website.
  #
  # @See http://schema.org/WebSite
  class WebSite < Base
    # === required attributes
    attribute :name, Types::String
    attribute :url, Types::WebUrl

    # === optional attributes
    attribute :potential_action?, SearchAction
    attribute :description?, Types::String
    attribute :publisher?, Types::Any
    attribute :author?, Types::Any
    attribute :copyrightYear?, Types::Integer
    attribute :copyrightHolder?, Types::Any
    attribute :inLanguage?, Types::String
    attribute :dateCreated?, Types::String
    attribute :dateModified?, Types::String
    attribute :datePublished?, Types::String
    attribute :keywords?, Types::String
    attribute :isPartOf?, Types::Any
    attribute :hasPart?, Types::Array
    attribute :license?, Types::WebUrl
    attribute :image?, Types::Any
    attribute :sameAs?, Types::Array
    attribute :alternateName?, Types::String
    attribute :mainEntity?, Types::Any
    attribute :identifier?, Types::String
  end
end
