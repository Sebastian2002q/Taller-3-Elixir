defmodule Estructuras do
  def main() do
    "Ingrese los datos del cliente"
    |> Cliente.ingresar(:clientes)
    |> Cliente.escribir_csv("clientes_ingresados.csv")
  end
end

Estructuras.main()
