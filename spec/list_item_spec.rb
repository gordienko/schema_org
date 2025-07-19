# frozen_string_literal: true

RSpec.describe SchemaOrg::ListItem do
  describe '#initialize' do
    it 'sets the default @type to ListItem' do
      list_item = SchemaOrg::ListItem.new
      expect(list_item.to_h[:@type]).to eq('ListItem')
    end

    it 'assigns attributes correctly when provided' do
      item_list = SchemaOrg::ItemList.new(
        itemListElement: ['Item 1', 'Item 2'],
        itemListOrder: 'Ascending'
      )

      attributes = {
        image: 'https://example.com/image.png',
        item: item_list,
        name: 'Test Item',
        position: 1,
        url: 'https://example.com/item-url'
      }
      list_item = SchemaOrg::ListItem.new(attributes)

      expect(list_item.to_h[:image]).to eq(attributes[:image])
      expect(list_item.to_h[:name]).to eq(attributes[:name])
      expect(list_item.to_h[:position]).to eq(attributes[:position])
      expect(list_item.to_h[:url]).to eq(attributes[:url])
      expect(list_item.to_h[:item]).to eq(item_list.to_h)
    end

    it 'does not include optional attributes if they are not provided' do
      list_item = SchemaOrg::ListItem.new
      expect(list_item.to_h.keys).not_to include(:image, :item, :name, :position, :url)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag with all provided attributes' do
      item_list = SchemaOrg::ItemList.new(
        itemListElement: ['Item A', 'Item B'],
        itemListOrder: 'Descending'
      )

      attributes = {
        image: 'https://example.com/image.png',
        item: item_list,
        name: 'Example Item',
        position: 5,
        url: 'https://example.com/product'
      }
      list_item = SchemaOrg::ListItem.new(attributes)

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'ListItem',
        image: 'https://example.com/image.png',
        item: item_list.to_h.transform_keys(&:to_s),
        name: 'Example Item',
        position: 5,
        url: 'https://example.com/product'
      }

      actual_data = JSON.parse(list_item.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end

    it 'generates JSON-LD without optional attributes if they are not provided' do
      list_item = SchemaOrg::ListItem.new

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'ListItem'
      }

      actual_data = JSON.parse(list_item.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end
  end
end
