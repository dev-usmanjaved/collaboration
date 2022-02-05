# frozen_string_literal: true

class GeneratePairsService
  def self.call(team, sprints)
    new(team, sprints).call
  end

  def initialize(team, sprints)
    @team = team
    @sprints = sprints
  end

  def call
    return false if @sprints.nil? || @sprints.zero? || @team.empty?

    generate_pairs
  end

  private

  def generate_pairs
    schedule = {}
    @team.push(nil) if @team.size.odd?
    pairs = @team.size / 2

    @sprints.times do |index|
      schedule[index + 1] = []
      pairs.times do |pair_index|
        schedule[index + 1] << [@team[pair_index], @team.reverse[pair_index]]
      end
      @team = [@team[0]] + @team[(1..-1)].rotate(-1)
    end

    schedule.to_json.to_s
  end
end
