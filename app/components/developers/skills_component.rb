module Developers
  class SkillsComponent < ApplicationComponent
    attr_reader :skills

    def initialize(skills:)
      @skills = skills
    end
  end
end
