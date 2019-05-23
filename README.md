# Elixir


Introdução
  
  
  **Recursos da plataforma**<br>
  Todo código é executado dentro de Threads chamados de processos que são isolados e trocam informações por meio de mensagens exemplo:
  
 > current_process = self()
spawn_link(fn ->
  send(current_process, {:msg, "hello world"})
end)<br>
receive do
  {:msg, contents} -> IO.puts(contents)
end .

  Para o Elixir não é problema ter centenas de milhares de processos executando simultaneamente na mesma máquina, devido sua natureza leve.
  Os processos também podem se comunicar com outros processos que estão em execução em outras máquinas na mesma rede, isso permite que desenvolvedores separem os trabalhos em vários nós.
  
  **Programação Funcional no Elixir**<br>

  A programação funcional promove uma eficiencia na codificação que ajuda os desenvolvedores a escrever códigos curtos, rápidos e de fácil manutenção.
  Por exemplo, a correspondência de padrões permite que os desenvolvedores destruam dados facilmente e acessem seu conteúdo:
> %User{name: name, age: age} = User.get("John Doe")
name #=> "John Doe".

**Instalação Elixir no Ubuntu**<br>
Como o elixir roda na VM do Erlang, deve ser instalado suas dependencias 
1- sudo apt update
2- sudo apt install erlang, segundo site do Elixir use este comando
3- sudo apt-get install esl-erlang

Com o Erlang em mãos podemos instalar o Elixir
sudo apt-get install elixir

Para testar se deu tudo certo 
digite no terminal o comando
iex
se tudo estiver OK, deve ser apresentado no console algo parecido com isso
Interactive Elixir press Ctrl + C to cancel<br>
iex > 1 + 1<br>
2<br>

Para criar um projeto com elixir use o comando<br>
 mix new nome_projeto

