function mostrarEstadisticas()
    local datos={}
    encabezado()
    local f=io.open("estadisticas.txt")
    for linea in f: lines () do
        table.insert (datos,linea)
    end
    f:close()
    print("ESTADISTICAS")
    print("Partidas Jugadas",datos[1])
    print("Partidas Ganadas",datos[2])
    print("Partidas Perdidas",datos[3])
    print ("pulse enter para continuar...")
    io.read ()

end