function juego()
    io.write("Te quedan: " ,intentos, " intentos")
    print("indica un numero entre 1 y 1000")
    numero=io.read()
    verificar()
end
numero_secreto=0
intento=5
numero=0
function verificar()
    local n= tonumber(numero)
    if n==nil then
        print("Por favor introduzca un numero entero")
        print ("pulse enter para continuar...")
        io.read()
    elseif n<0 and n>1000 then
        print("Por favor introduzca un numero entre 1 y 1000")
        print ("pulse enter para continuar...")
        io.read()
    else
        if n==numero_secreto then
            print("GANASTE, Venciste el Sistema")
            guardarEstadisticas(true)
            estado=0
            print ("pulse enter para continuar...")
            io.read()
        else
            if n<numero_secreto then
                print("++MAS++")
            else
                print ("++MENOS++")
            end
        end
        intentos=intentos-1
        if intentos==0 then
            print("MISION FALLIDA!!")
            guardarEstadisticas(false)
            estado=0
        end
        print("Por favor introduzca enter para intento...")
        io.read()
    end
end