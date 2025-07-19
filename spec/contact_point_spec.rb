# frozen_string_literal: true

RSpec.describe SchemaOrg::ContactPoint do
  describe '#initialize' do
    it 'sets the default @type to ContactPoint' do
      contact_point = SchemaOrg::ContactPoint.new(contact_type: 'Customer Service', telephone: '+1-800-555-5555')
      expect(contact_point.to_h[:@type]).to eq('ContactPoint')
    end

    it 'sets the contact_type and telephone correctly' do
      contact_point = SchemaOrg::ContactPoint.new(contact_type: 'Technical Support', telephone: '+1-800-123-4567')
      expect(contact_point.to_h[:contact_type]).to eq('Technical Support')
      expect(contact_point.to_h[:telephone]).to eq('+1-800-123-4567')
    end

    it 'sets optional attributes if provided' do
      attributes = {
        contact_type: 'Support',
        telephone: '+1-800-555-5555',
        area_served: %w[US CA],
        available_language: %w[English French],
        contact_option: 'Toll-Free'
      }
      contact_point = SchemaOrg::ContactPoint.new(attributes)
      expect(contact_point.to_h).to include(attributes)
    end

    it 'does not include optional attributes if they are not provided' do
      contact_point = SchemaOrg::ContactPoint.new(contact_type: 'Sales', telephone: '+1-800-999-9999')
      expect(contact_point.to_h.key?(:area_served)).to eq(false)
      expect(contact_point.to_h.key?(:available_language)).to eq(false)
      expect(contact_point.to_h.key?(:contact_option)).to eq(false)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag' do
      attributes = {
        contact_type: 'Customer Service',
        telephone: '+1-800-555-5555',
        area_served: %w[US CA],
        available_language: %w[English Spanish],
        contact_option: 'Toll-Free'
      }
      contact_point = SchemaOrg::ContactPoint.new(attributes)
      json_ld_script = contact_point.to_json_ld

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'ContactPoint',
        contact_type: 'Customer Service',
        telephone: '+1-800-555-5555',
        area_served: %w[US CA],
        available_language: %w[English Spanish],
        contact_option: 'Toll-Free'
      }

      expected_data_with_string_keys = expected_data.transform_keys(&:to_s)
      actual_data = JSON.parse(json_ld_script.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data_with_string_keys)
    end
  end
end
