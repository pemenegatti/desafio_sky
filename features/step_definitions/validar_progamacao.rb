# frozen_string_literal: true

Dado('que eu acesse o site da SKY') do
  @site.load
end

Dado('clico na opcao programacao') do
  @site.acessar_programacao
end

Dado('Seleciono a programação que estiver passando na hora') do
  @programacao.selecionar_programacao
end

Entao('verifico se o texto e a hora da programação esta correto') do
  @programacao.validar_programacao
end
