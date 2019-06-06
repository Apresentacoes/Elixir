
pid = spawn(fn ->
              receive do
                {:ok, msg} ->
                     IO.puts("#{msg}")
                _ ->
                  IO.puts("Não entendi sua mensagem cara :/")
              end
            end)

send(pid, {:ok, IO.gets("Informe Algo: ")})
