# frozen_string_literal: true

RSpec.describe SchemaOrg::Organization do
  describe '#initialize' do
    it 'sets the default @type to Organization' do
      organization = SchemaOrg::Organization.new(name: 'Test Org', logo: 'https://example.com/logo.png', url: 'https://example.com')
      expect(organization.to_h[:@type]).to eq('Organization')
    end

    it 'assigns all required attributes correctly' do
      attributes = {
        name: 'Company Name',
        logo: 'https://example.com/logo.png',
        url: 'https://example.com'
      }
      organization = SchemaOrg::Organization.new(attributes)

      expect(organization.to_h[:name]).to eq(attributes[:name])
      expect(organization.to_h[:logo]).to eq(attributes[:logo])
      expect(organization.to_h[:url]).to eq(attributes[:url])
    end

    it 'assigns all optional attributes when provided' do
      founder = SchemaOrg::Person.new(name: 'John Doe')

      # Добавим корректный объект для `Place`
      founding_location = SchemaOrg::Place.new(
        name: 'New York Office',
        address: '123 Main Street, New York, NY'
      )

      attributes = {
        name: 'Tech Corp',
        logo: 'https://example.com/logo.jpg',
        url: 'https://example.com',
        email: 'contact@example.com',
        slogan: 'Innovating the Future',
        telephone: '123-456-7890',
        same_as: ['https://facebook.com/techcorp', 'https://twitter.com/techcorp'],
        founding_date: Date.new(2000, 1, 1),
        legal_name: 'Tech Corporation Inc.',
        founder: founder,
        founding_location: founding_location
      }
      organization = SchemaOrg::Organization.new(attributes)

      expect(organization.to_h[:email]).to eq(attributes[:email])
      expect(organization.to_h[:slogan]).to eq(attributes[:slogan])
      expect(organization.to_h[:telephone]).to eq(attributes[:telephone])
      expect(organization.to_h[:same_as]).to eq(attributes[:same_as])
      expect(organization.to_h[:founding_date]).to eq(attributes[:founding_date])
      expect(organization.to_h[:legal_name]).to eq(attributes[:legal_name])
      expect(organization.to_h[:founder]).to eq(founder.to_h)
      expect(organization.to_h[:founding_location]).to eq(founding_location.to_h)
    end

    it 'does not include optional attributes if they are not provided' do
      organization = SchemaOrg::Organization.new(name: 'Minimal Company', logo: 'https://example.com/min-logo.png',
                                                 url: 'https://example.com/minimal')
      expect(organization.to_h.keys).not_to include(:email, :slogan, :telephone, :same_as, :founding_date, :legal_name,
                                                    :founder, :founding_location)
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag with required attributes' do
      attributes = {
        name: 'Test Org',
        logo: 'https://example.com/logo.png',
        url: 'https://example.org'
      }
      organization = SchemaOrg::Organization.new(attributes)

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'Organization',
        name: 'Test Org',
        logo: 'https://example.com/logo.png',
        url: 'https://example.org'
      }

      actual_data = JSON.parse(organization.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end

    it 'generates JSON-LD with optional attributes when they are provided' do
      attributes = {
        name: 'Full Company',
        logo: 'https://example.com/full-logo.png',
        url: 'https://example.com/company',
        email: 'info@example.com',
        slogan: 'Leading the Market',
        telephone: '555-567-8910'
      }
      organization = SchemaOrg::Organization.new(attributes)

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'Organization',
        name: 'Full Company',
        logo: 'https://example.com/full-logo.png',
        url: 'https://example.com/company',
        email: 'info@example.com',
        slogan: 'Leading the Market',
        telephone: '555-567-8910'
      }

      actual_data = JSON.parse(organization.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1])
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end
  end
end
