defmodule Estructuras do
  def main() do
    "Ingrese los datos del cliente"
    |> Cliente.ingresar(:clientes)
    |> generar_mensaje_clientes(&generar_mensaje/1)
    |> Cliente.escribir_csv("")
  end

  defp generar_mensaje(cliente) do
    altura = cliente.altura |> Float.round(2)

    "Hola #{cliente.nombre}, tu edad es de #{cliente.edad} años y tienes una altura de #{cliente.altura}\n"
  end

  defp generar_mensaje_clientes(lista_clientes, parser) do
    lista_clientes
    |> Enum.map(parser)
    |> Enum.join()
  end
end

Estructuras.main()
