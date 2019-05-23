//Processo que recebe mensagens
pid = spawn(fn ->
              receive do
                {:ok, msg} ->
                  IO.puts("Fazer verificações para esta mensagem: #{msg}")
                _ ->
                  IO.puts("Não entendi sua mensagem cara :/")
              end
            end)

//Enviando mensagem para o processo
send(pid, {:ok, "Teste execução de processo com Elixir"})
