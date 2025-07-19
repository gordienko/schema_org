# frozen_string_literal: true

RSpec.describe SchemaOrg::ItemList do
  describe '#initialize' do
    it 'sets the default @type to ItemList' do
      item_list = SchemaOrg::ItemList.new
      expect(item_list.to_h[:@type]).to eq('ItemList')
    end

    it 'assigns attributes correctly' do
      attributes = {
        itemListElement: ['Item 1', 'Item 2', 'Item 3'],
        itemListOrder: 'Descending',
        numberOfItems: 3,
        url: 'https://example.com/item-list',
        image: 'https://example.com/image.png'
      }
      item_list = SchemaOrg::ItemList.new(attributes)

      expect(item_list.to_h[:itemListElement]).to eq(attributes[:itemListElement])
      expect(item_list.to_h[:itemListOrder]).to eq(attributes[:itemListOrder])
      expect(item_list.to_h[:numberOfItems]).to eq(attributes[:numberOfItems])
      expect(item_list.to_h[:url]).to eq(attributes[:url])
      expect(item_list.to_h[:image]).to eq(attributes[:image])
    end

    it 'does not include attributes not provided' do
      item_list = SchemaOrg::ItemList.new
      expect(item_list.to_h.keys).not_to include(:itemListElement, :itemListOrder, :numberOfItems, :url, :image)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag' do
      attributes = {
        itemListElement: ['Item 1', 'Item 2', 'Item 3'],
        itemListOrder: 'Ascending',
        numberOfItems: 3
      }
      item_list = SchemaOrg::ItemList.new(attributes)

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'ItemList',
        itemListElement: ['Item 1', 'Item 2', 'Item 3'],
        itemListOrder: 'Ascending',
        numberOfItems: 3
      }

      actual_data = JSON.parse(item_list.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end

    it 'does not include optional attributes if they are not provided' do
      item_list = SchemaOrg::ItemList.new

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'ItemList'
      }

      actual_data = JSON.parse(item_list.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end
  end
end
