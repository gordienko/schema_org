# frozen_string_literal: true

RSpec.describe SchemaOrg::Base do
  describe '#initialize' do
    it 'sets the default @type based on the class name if not provided' do
      base = SchemaOrg::Base.new
      expect(base.to_h[:@type]).to eq('Base')
    end

    it 'allows overriding @type during initialization' do
      custom_type = 'CustomBaseType'
      base = SchemaOrg::Base.new('@type': custom_type)
      expect(base.to_h[:@type]).to eq(custom_type)
    end
  end

  describe '#to_h' do
    it 'returns the hash representation without nil values' do
      base = SchemaOrg::Base.new('@type': nil)
      expect(base.to_h).to eq({ '@type': 'Base' })
    end
  end

  describe '#to_json' do
    let(:base) { SchemaOrg::Base.new }

    it 'generates compact JSON string without root attributes' do
      json = base.to_json
      expect(json).to eq({ '@type': 'Base' }.to_json)
    end

    it 'includes the root attribute when as_root is true' do
      json = base.to_json(as_root: true)
      expect(json).to eq({ '@context' => 'https://schema.org', '@type': 'Base' }.to_json)
    end

    it 'generates pretty JSON when pretty is true' do
      json = base.to_json(pretty: true)
      expected_json = JSON.pretty_generate('@type': 'Base')
      expect(json).to eq(expected_json)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag' do
      base = SchemaOrg::Base.new
      json_ld_script = base.to_json_ld
      expected_json = {
        '@context' => 'https://schema.org',
        '@type' => 'Base'
      }.to_json
      expect(json_ld_script).to eq("<script type=\"application/ld+json\">\n#{expected_json}\n</script>")
    end
  end

  describe '#rails_production?' do
    it 'returns true if Rails is defined and running in production' do
      stub_const('Rails', double(env: double(production?: true)))
      base = SchemaOrg::Base.new
      expect(base.rails_production?).to eq(true)
    end

    it 'returns false if Rails is not in production' do
      stub_const('Rails', double(env: double(production?: false)))
      base = SchemaOrg::Base.new
      expect(base.rails_production?).to eq(false)
    end
  end
end
