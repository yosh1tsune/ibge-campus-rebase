require_relative 'estado.rb'
require_relative 'cidade.rb'
require_relative 'database_setup.rb'

input = nil

database_setup

while input != '4' do
  puts "\nEscolha uma das seguintes opções: 1 - Rankings por UF, 2 - Rankings por cidade, 3 - Frequencia de um nome por década, 4 - Sair. \n\n"
  input = gets.chomp
  if input == '1'
    response = Estado.get_ufs
    puts "\nDigite a sigla de um Estado para ver os rankings: \n\n"
    uf = gets.chomp
    response.each do |r|
      Estado.uf_geral(r) if r[2] == uf
      Estado.uf_masc(r) if r[2] == uf
      Estado.uf_fem(r) if r[2] == uf
    end
  elsif input == '2'
    response = Estado.get_ufs
    puts "\nDigite uma cidade e a sigla de seu Estado, separados por virgula (Ex: 'São Paulo, SP') para ver os rankings: \n\n"
    local = gets.chomp
    Cidade
  elsif input == '3'

  end
end

puts 'Adios!'