# frozen_string_literal: true

RSpec.describe SchemaOrg::Types::WebUrl do
  it 'accepts valid HTTP/HTTPS URLs' do
    expect { SchemaOrg::Types::WebUrl['https://example.com'] }.not_to raise_error
    expect { SchemaOrg::Types::WebUrl['http://example.com/path'] }.not_to raise_error
  end

  it 'strips whitespace from URLs' do
    expect(SchemaOrg::Types::WebUrl['  https://example.com  ']).to eq('https://example.com')
  end

  it 'rejects an invalid URL' do
    expect { SchemaOrg::Types::WebUrl['not-a-url'] }.to raise_error(Dry::Types::ConstraintError, /is not a valid URL/)
  end

  it 'rejects nil' do
    expect { SchemaOrg::Types::WebUrl[nil] }.to raise_error(Dry::Types::ConstraintError, /is not a valid URL/)
  end
end
