# frozen_string_literal: true

# Modulo responsavel pelo utilidades
module Utils
  class << self
    def screenshots
      Capybara.page.save_screenshot('./screenshots/programacao.png')
    end
  end
end
