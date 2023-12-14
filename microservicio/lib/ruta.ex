defmodule Microservicio.Ruta do
  # CONiN

  import Plug.Conn

  def init(options) do
    IO.inspect(options, label: "init ~>")
    options
  end

# Interaccion con servidor | Peticiones | Objecto que contendra los params
  def call(conn, _options) do
    IO.inspect(conn, label: "conn ~>")


      #Peticiones 
  
  send_resp(conn, 200, "microservicio en elixir\n")
  end
end

