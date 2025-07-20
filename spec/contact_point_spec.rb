# frozen_string_literal: true

RSpec.describe SchemaOrg::ContactPoint do
  describe '#initialize' do
    it 'sets the default @type to ContactPoint' do
      contact_point = SchemaOrg::ContactPoint.new(contactType: 'Customer Service', telephone: '+1-800-555-5555')
      expect(contact_point.to_h[:@type]).to eq('ContactPoint')
    end

    it 'sets the contactType and telephone correctly' do
      contact_point = SchemaOrg::ContactPoint.new(contactType: 'Technical Support', telephone: '+1-800-123-4567')
      expect(contact_point.to_h[:contactType]).to eq('Technical Support')
      expect(contact_point.to_h[:telephone]).to eq('+1-800-123-4567')
    end

    it 'sets optional attributes if provided' do
      attributes = {
        contactType: 'Support',
        telephone: '+1-800-555-5555',
        areaServed: %w[US CA],
        availableLanguage: %w[English French],
        contactOption: 'Toll-Free'
      }
      contact_point = SchemaOrg::ContactPoint.new(attributes)
      expect(contact_point.to_h).to include(attributes)
    end

    it 'does not include optional attributes if they are not provided' do
      contact_point = SchemaOrg::ContactPoint.new(contactType: 'Sales', telephone: '+1-800-999-9999')
      expect(contact_point.to_h.key?(:areaServed)).to eq(false)
      expect(contact_point.to_h.key?(:availableLanguage)).to eq(false)
      expect(contact_point.to_h.key?(:contactOption)).to eq(false)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag' do
      attributes = {
        contactType: 'Customer Service',
        telephone: '+1-800-555-5555',
        areaServed: %w[US CA],
        availableLanguage: %w[English Spanish],
        contactOption: 'Toll-Free'
      }
      contact_point = SchemaOrg::ContactPoint.new(attributes)
      json_ld_script = contact_point.to_json_ld

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'ContactPoint',
        contactType: 'Customer Service',
        telephone: '+1-800-555-5555',
        areaServed: %w[US CA],
        availableLanguage: %w[English Spanish],
        contactOption: 'Toll-Free'
      }

      expected_data_with_string_keys = expected_data.transform_keys(&:to_s)
      actual_data = JSON.parse(json_ld_script.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data_with_string_keys)
    end
  end
end
