# frozen_string_literal: true

RSpec.describe SchemaOrg::InteractionCounter do
  describe '#initialize' do
    it 'sets the default @type to InteractionCounter' do
      interaction_counter = SchemaOrg::InteractionCounter.new(
        userInteractionCount: 100,
        interactionType: 'https://schema.org/LikeAction'
      )
      expect(interaction_counter.to_h[:@type]).to eq('InteractionCounter')
    end

    it 'sets the userInteractionCount and interactionType correctly' do
      interaction_counter = SchemaOrg::InteractionCounter.new(
        userInteractionCount: 200,
        interactionType: 'https://schema.org/CommentAction'
      )
      expect(interaction_counter.to_h[:userInteractionCount]).to eq(200)
      expect(interaction_counter.to_h[:interactionType]).to eq('https://schema.org/CommentAction')
    end
  end

  describe '#to_json_ld' do
    it 'generates JSON-LD wrapped in a script tag' do
      interaction_counter = SchemaOrg::InteractionCounter.new(
        userInteractionCount: 150,
        interactionType: 'https://schema.org/LikeAction'
      )

      expected_data = {
        '@context' => 'https://schema.org',
        '@type' => 'InteractionCounter',
        userInteractionCount: 150,
        interactionType: 'https://schema.org/LikeAction'
      }

      actual_data = JSON.parse(
        interaction_counter.to_json_ld.match(%r{<script type="application/ld\+json">(.*)</script>}m)[1]
      )
      expect(actual_data).to eq(expected_data.transform_keys(&:to_s))
    end
  end
end
