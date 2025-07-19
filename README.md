# SchemaOrg

`SchemaOrg` is a library for working with Schema.org objects, allowing you to create, manipulate, and generate structured data in JSON-LD format. The main purpose of the library is to support Schema.org types and attributes for integrating structured data into web pages.

## Features

- Generate valid JSON-LD data for structured objects.
- Support for standard Schema.org types (e.g., `Offer`, `ItemList`, `ListItem`).
- Built on `Dry::Struct` for statically typed data.
- Easy data manipulation and seamless web application integration.

---

## Installation

To install the library, add the following to your `Gemfile`:
```bash
bundle add schema_org
```
If you are not using bundler, install the gem manually:
```bash
gem install schema_org
```
---

## Usage

### Define an Object with Schema.org
Example: Creating an `Offer` object.
```ruby
require 'schema_org'

offer = SchemaOrg::Offer.new(
priceCurrency: 'USD',
price: 100,
availability: 'InStock',
url: 'https://example.com/offer'
)

# Generate JSON-LD
puts offer
```
Output:
```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Offer",
  "priceCurrency": "USD",
  "price": 100,
  "availability": "InStock",
  "url": "https://example.com/offer"
}
</script>
```
---

### Advanced Features

#### Working with `ItemList`

For describing a list of items, use the `ItemList` class:
```ruby
list_item1 = SchemaOrg::ListItem.new(
position: 1,
name: 'First Item',
url: 'https://example.com/item1'
)

list_item2 = SchemaOrg::ListItem.new(
position: 2,
name: 'Second Item',
url: 'https://example.com/item2'
)

item_list = SchemaOrg::ItemList.new(
itemListElement: [list_item1, list_item2],
itemListOrder: 'Ascending',
numberOfItems: 2
)

puts item_list
```
---

## Classes and Modules

### `SchemaOrg::Base`
The base class from which all Schema.org classes derive. Implements common methods for JSON-LD generation.

**Key Points:**
- All subclasses automatically get the `@type` attribute, representing the Schema.org object type.
- The `to_json_ld` method converts an object into JSON-LD format.

---

### `SchemaOrg::Offer`
Represents the Schema.org `Offer` entity.

#### Attributes:

- `priceCurrency` (required): The currency of the price (e.g., `"USD"`).
- `price` (required): The price of the offer.
- `availability` (optional): Availability status (e.g., `"InStock"` or `"OutOfStock"`).
- `url` (optional): A URL linking to the offer's page.

#### Example:
```ruby
offer = SchemaOrg::Offer.new(priceCurrency: 'USD', price: 300, availability: 'InStock')
puts offer
```
---

### `SchemaOrg::ItemList`
Represents the Schema.org `ItemList`, used for describing lists of objects.

#### Attributes:

- `itemListElement` (optional): List items, an array of `ListItem` objects.
- `itemListOrder` (optional): The order of the list (`"Ascending"`, `"Descending"`).
- `numberOfItems` (optional): Total number of items in the list.

#### Example:

See the *Advanced Features* section.

---

### `SchemaOrg::ListItem`
Represents an item in a Schema.org `ItemList`.

#### Attributes:

- `image` (optional): A URL of the item's image.
- `item` (optional): The item itself (can be a URL or another Schema.org object).
- `name` (optional): The name of the item.
- `position` (optional): The position of the item in the list.
- `url` (optional): A URL linking to the item.

---

## JSON-LD in the Web

JSON-LD (JavaScript Object Notation for Linked Data) is used to structure data for better indexing by search engines. The library automatically generates valid data according to Schema.org requirements.

Example of embedding JSON-LD in HTML:
```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Offer",
  "priceCurrency": "USD",
  "price": 100,
  "availability": "InStock"
}
</script>
```
---

## Development

To get started with the project, follow these steps:

1. Install dependencies:
```bash
bin/setup
```
2. Run tests to ensure functionality:
```bash
rake spec
```
3. Use the interactive console for experiments:
```bash
bin/console
```
4. To release a new gem version, update `version.rb` and run:
```bash
bundle exec rake release
```
---

## License

This project is open source and available under the terms of the [MIT License](https://opensource.org/licenses/MIT).
