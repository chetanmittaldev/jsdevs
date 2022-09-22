module Developers
  class SkillsComponent < ApplicationComponent
    attr_reader :frontend, :backend, :language

    def initialize(frontend:, backend:, language:)
      @frontend = frontend
      @backend = backend
      @language = language
    end
  end
end
