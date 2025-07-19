# frozen_string_literal: true

RSpec.describe SchemaOrg::BreadcrumbList do
  describe '#initialize' do
    it 'sets the default @type to BreadcrumbList' do
      breadcrumb_list = SchemaOrg::BreadcrumbList.new(itemListElement: [])
      expect(breadcrumb_list.to_h[:@type]).to eq('BreadcrumbList')
    end

    it 'sets itemListElement correctly' do
      items = [
        { '@type': 'ListItem', position: 1, name: 'Home', item: 'https://example.com/' },
        { '@type': 'ListItem', position: 2, name: 'Category', item: 'https://example.com/category' }
      ]
      breadcrumb_list = SchemaOrg::BreadcrumbList.new(itemListElement: items)
      expect(breadcrumb_list.to_h[:itemListElement]).to eq(items)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag' do
      items = [
        { '@type': 'ListItem', position: 1, name: 'Home', item: 'https://example.com/' },
        { '@type': 'ListItem', position: 2, name: 'Category', item: 'https://example.com/category' }
      ]
      breadcrumb_list = SchemaOrg::BreadcrumbList.new(itemListElement: items)

      expected_json = {
        '@context' => 'https://schema.org',
        '@type' => 'BreadcrumbList',
        itemListElement: items
      }.to_json

      json_ld_script = breadcrumb_list.to_json_ld
      expect(json_ld_script).to eq("<script type=\"application/ld+json\">\n#{expected_json}\n</script>")
    end
  end
end
