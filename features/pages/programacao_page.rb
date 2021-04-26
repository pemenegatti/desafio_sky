# frozen_string_literal: true

# Classe responsavel pela interacao com a pagina da programacao
class Programacao < SitePrism::Page
  element :passando_agora, 'div[class="schedule-block"]'
  element :programacao_atual, 'div[class="schedule-inner schedule-live"]', match: :first
  element :nome_programacao_modal, 'div[class="sky-modal-program-title"]'
  element :horario_programacao_modal, 'div[class="sky-modal-program-date-time"]'

  def selecionar_programacao
    passando_agora.click
    programacao_atual.click
    @nome_atual_programacao = programacao_atual.find('h2[class="program-schedule-title"]')
    @horario_atual_programaca = programacao_atual.find('div[class="program-schedule-info"]')
  end

  def validar_programacao
    nome_modal_programaca = nome_programacao_modal.text
    horario_modal_programaca = horario_programacao_modal.text
    Utils.screenshots
    @nome_atual_programacao.text.eql?(nome_modal_programaca)
    @horario_atual_programaca.text.eql?(horario_modal_programaca)
  end
end
