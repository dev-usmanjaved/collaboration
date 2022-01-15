# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GeneratePairsService, type: :service do
  let(:team) { %w[Jack Danial Rose] }

  describe '.create teams' do
    it 'get all teams' do
      results = JSON.parse(described_class.call(team, 3))
      expect(results).to eq({ '1' => [['Jack', nil], %w[Danial Rose]], '2' => [%w[Jack Rose], [nil, 'Danial']],
                              '3' => [%w[Jack Danial], ['Rose', nil]] })
    end
  end
end
