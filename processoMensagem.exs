pid = spawn(fn ->
              receive do
                {:ok, msg} ->
                  IO.puts("Fazer verificações para esta mensagem: #{msg}")
                _ ->
                  IO.puts("Não entendi sua mensagem cara :/")
              end
            end)
send(pid, {:ok, "Teste execução de processo com Elixir"})
