Dado('que o usuario queira se logar') do
    @test = LoginPage.new
    @test.load
end

Quando('ele digitar as credenciais validas') do
   @test.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end

Entao('deve acessar o site com sucesso') do
    @home = HomePage.new
    @home.checkLoginSucessful
end

# Dado('ele perca a conexao com a internet') do
# end

# Entao('aviso sobre a falta de conexao deve aparecer') do
# end