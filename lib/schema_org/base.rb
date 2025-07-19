# frozen_string_literal: true

##
# Module SchemaOrg provides classes and functionality to generate and manipulate
# structured data adhering to the Schema.org specification. The primary focus of
# this module is to assist with generating JSON-LD data for use in web development,
# adhering to the schema attributes and types defined by Schema.org.
#
module SchemaOrg
  # Represents the base class for handling structured data in the Schema.org standard.
  # This class extends from Dry::Struct and provides foundational methods for generating
  # and manipulating JSON-LD output based on Schema.org attributes.
  #
  # The class assigns default values for required parameters and generates JSON-LD
  # that can be integrated into web pages. It uses a fixed root attribute to adhere
  # to the Schema.org context.
  #
  # Attributes:
  # - @type: Specifies the Schema.org type. Defaults to the class name of the derived object.
  #
  # Constants:
  # - ROOT_ATTR: A hash representing the root context for Schema.org data with `@context` set to "https://schema.org".
  #
  # Methods:
  # - initialize: Sets default attributes, including the @type if not provided.
  # - to_s: Returns the JSON-LD representation as a string. If the environment is set to Rails production,
  # ensures non-pretty output by default.
  # - to_json_ld: Converts the object to a JSON-LD `<script>` tag with optional formatting.
  # - to_json: Converts the object to a JSON string with an optional `ROOT_ATTR` included for root context.
  # - rails_production?: Checks if the application is running in a Rails production environment.
  class Base < Dry::Struct
    ROOT_ATTR = { '@context' => 'https://schema.org' }.freeze

    attribute :@type, Types::String.optional.default(nil)

    def initialize(attributes = {})
      attributes[:@type] ||= self.class.name.split('::').last
      super
    end

    def self.new(attributes = {})
      super(attributes.compact)
    end

    def to_h
      super.compact
    end

    def to_s
      json_string = to_json_ld(pretty: !rails_production? && !ENV['SCHEMA_DOT_ORG_MINIFIED_JSON'])
      json_string.respond_to?(:html_safe) ? json_string.html_safe : json_string
    end

    def to_json_ld(pretty: false)
      "<script type=\"application/ld+json\">\n#{to_json(pretty: pretty, as_root: true)}\n</script>"
    end

    def to_json(pretty: false, as_root: false)
      structure = as_root ? ROOT_ATTR.merge(to_h) : to_h
      pretty ? JSON.pretty_generate(structure) : structure.to_json
    end

    def rails_production?
      defined?(Rails) && Rails.env.production?
    end
  end
end
