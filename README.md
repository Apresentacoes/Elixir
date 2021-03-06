
# Elixir
### Grupo: Cássio Elias, Marcelo Bristot, Matheus Luiz, Herick Maciel e Novato

Introdução
  
  
  **Recursos da plataforma**<br>
  Todo código é executado dentro de Threads chamados de processos que são isolados e trocam informações por meio de mensagens exemplo:
  
 > current_process = self()<br>
spawn_link(fn -><br>
  send(current_process, {:msg, "hello world"})<br>
end)<br>
receive do<br>
  {:msg, contents} -> IO.puts(contents)<br>
end .<br>

  Para o Elixir não é problema ter centenas de milhares de processos executando simultaneamente na mesma máquina, devido sua natureza leve.<br>
  Os processos também podem se comunicar com outros processos que estão em execução em outras máquinas na mesma rede, isso permite que desenvolvedores separem os trabalhos em vários nós.<br>
  
  **Programação Funcional no Elixir**<br>

  A programação funcional promove uma eficiencia na codificação que ajuda os desenvolvedores a escrever códigos curtos, rápidos e de fácil manutenção.<br>
  Por exemplo, a correspondência de padrões permite que os desenvolvedores construam dados facilmente e acessem seu conteúdo:<br>
> %User{name: name, age: age} = User.get("John Doe")<br>
name #=> "John Doe".<br>

**Instalação Elixir no Ubuntu**<br>
Como o elixir roda na VM do Erlang, deve ser instalado suas dependencias. <br>
1- sudo apt update<br>
2- sudo apt install erlang, segundo site do Elixir use este comando<br>
3- sudo apt-get install esl-erlang, foi testado este comando e realmente funcionou<br>

Com o Erlang em mãos podemos instalar o Elixir<br>
sudo apt-get install elixir<br>

Elixir vem com IEX, um console interativo, que permite avaliar expressões em Elixir. <br>
digite no terminal o comando<br>
iex<br>
se tudo estiver OK, deve ser apresentado no console algo parecido com isso<br>
Interactive Elixir press Ctrl + C to cancel<br>
iex > 1 + 1<br>
2<br>

**Executar Scripts no Elixir**
Para executar um script crie um arquivo com extensão .exs, e cole o seguinte código
> IO.puts "Teste Script no Elixir" 

para executar digite no terminal:
elixir nome_arquivo.exs


Para criar um projeto com elixir use o comando<br>
 mix new nome_projeto
 
 **Paralelismo no Elixir**
 O Compilador Elixir não é sequencial os arquivos são compilados em paralelo
 
 A diretiva Elixir kernel.ParallelCompiler é responsável por gerar os compiladores onde cada um é responsável por um arquivo. Mas qual o número de compiladores? este número cresce se necessário.
 Quando um compilador é construido tendo em base um unico arquivo, ele diz ao coordenador (mestre no OpenMP) para enviar uma mensagem :ok com a lista de diretivas que ele compilou.
 Quando o compilador encontra uma dependência que não pode ser resolvida o manipulador de erros Elixir é acionado pela propria máquina virtual, enviando uma mensagem :waiting ao coordenador e aguarda até que o mesmo retorne.
 
 Quando não usar o Elixir?
 No momento em que se precisa construir aplicações que dependam de muito processamento de números, para este caso elixir é fraco, pois inicialmente o Elixir foi projetado para ser tolerânte a falhas e não para paralelização.

Tutoriais:
https://elixirschool.com/pt/lessons/basics/basics/
