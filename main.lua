require "final"


run = true
estado=0
while run do
    os.execute("clear")
    encabezado()
    if estado==0 then
        menu()
    elseif estado==1 then 
        juego()
    elseif estado==2 then
        escribir()
        encriptar()
        desencriptar()
    elseif estado==3 then
        mostrarEstadisticas()
    elseif estado==4 then
        mostrarAcerca()
    elseif estado==5 then
        os.exit(0)

    end
end

