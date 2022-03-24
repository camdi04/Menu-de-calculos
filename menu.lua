function menu()
    print("--MENU DE OPCIONES--")
    print("1) Jugar")
    print("2) Errores")
    print("3) Frase")
    print("4) Estadisticas")
    print("5) Acerca de...")
    print("6) Salir")
    io.write("$> ")


    local opcion=io.read()
    if opcion=="1" then
        intentos=5
        numero_secreto=math.random(1,10)
        numero=0
        estado=1
    elseif opcion== "2" then
        calculo()
        
            
    elseif opcion=="3" then
        escribir()
        encriptar()
        desencriptar()

    elseif opcion=="4" then
        mostrarEstadisticas()
    elseif opcion=="5" then
        mostrarAcerca()
    elseif opcion== "6" then
        os.exit(0)
    else
        print ("Ingrese una opcion valida")
        print ("pulse enter para continuar")
        io.read()
    end
end