function mostrarAcerca(...)
    encabezado()
    local f=io.open ("acerca.txt")
    local texto= f: read("*a")
    f:close()
    print(texto)
    print("pulse enter para continuar...")
    io.read()
end