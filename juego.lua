numero_secreto=0
intento=5
numero=0

function juego()
    io.write("Te quedan: " ,intentos, " intentos")
    print("indica un numero entre 1 y 1000")
    numero=io.read()
    verificar()
end

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
function guardarEstadisticas(gano)
    local datos={}
    local f=io.open("estadisticas.txt")
    for linea in f:lines () do
        table.insert(datos, linea)
    end
    f:close()
    datos[1]=datos[1]+1
    if gano then
        datos[2]=datos[2]+1
    else
        datos[3]=datos[3]+1
    end
    local f=io.open("estadisticas.txt","w+")
    f:write(datos[1],"\n")
    f:write(datos[2],"\n")
    f:write(datos[3],"\n")
    f:close()
end