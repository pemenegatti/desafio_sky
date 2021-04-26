# frozen_string_literal: true

# Classe responsavel pelo acesso do site
class AcessarSite < SitePrism::Page
  set_url '/'

  element :fechar_popup, 'span[class="sky_icon sky_icon-close icon_xs"]'
  element :link_programacao, 'a[href="/programacao"]'

  def acessar_programacao
    fechar_popup.click
    link_programacao.click
  end
end
