defmodule MicroservicioRouter.Router do

  use Plug.Router

#Dependencias
  plug :match
  plug :dispatch

  

# Esto lo vemos desde el backend cuando un cliente interactue en raiz ; 
  get "/" do
    IO.puts("Visitan la raiz")
    send_resp(conn, 200, "hola mundo") #Representa condicion web forma parte de plug
  end

  get "/saludar" do
    IO.puts("Visitan la pagina saludar")
    send_resp(conn, 200, "ok")
  end


# Parametros dinamicos 
# Remplaza nombre por cualquier variable 
  
  get "/blog/:nombre" do
    IO.puts("Nos piden el articulo del vlog #{nombre}")
    send_resp(conn, 200, "Articulo para #inspect{(nombre)}")
  end

# Rutas Dinamicas


get "/api/v:version/empleados/:nombre/ofertas/:id" do
  nombre = conn.params["nombre"]
  id = conn.params["id"]
  response = %{v: version, nombre: nombre, oferta: id}
  send_resp(conn, 200, "oferta #{inspect(response)}")
end

# Redireccion a otro Router modular
#  foward "/blog", to: MicroservicioRouter.BlogRouter 
end


