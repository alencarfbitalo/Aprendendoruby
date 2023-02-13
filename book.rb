def bem_vindo()
   puts "Bem-vindo ao Book, sua rede de compras"
end
#MENU
def menu()
   puts "[1] Cadastrar uma compra"
   puts "[2] ver todas as compra"
   puts "[3] sair"

   print "Escola uma opção: "
   return gets.to_i()
end

def inserir_compras()
   puts "Digite o nome da compra: "
   nome = gets.chomp() 
   puts "Digite o tipo da compra: "
   tipo = gets.chomp()
   puts
   puts "compra #{nome} cadastrada com sucesso!"
   puts
   return { nome: nome, tipo: tipo }
end

def imprimir_compras(compras)
   puts "======== Compras Cadastradas ========"
   compras.each do |compra|
   puts "#{compra[:nome]} - #{compra[:tipo]}"
   end
   puts
end

bem_vindo()

compras = []

opcao = menu()

while (opcao != 3) do 
  if(opcao == 1) 
   compras << inserir_compras()
elsif(opcao == 2) 
    imprimir_compras(compras)
 else
    puts"Opção inválida"
 end

 #MENU
 puts "[1] Cadastrar uma compra"
 puts "[2] ver todas as compra"
 puts "[3] sair"

 print "Escolha uma opção: "
 opcao = gets.to_i()
end

puts 'Obrigado por usar o book, até logo'