fecha = os.date("*t")
hoy = fecha.day.."/"..fecha.month.."/"..fecha.year
ejecucion = true
simbolos="!|&]#$[<(%{>*/;@}:-?+=.,_(^"
alfabeto="abcdefghijklmonpqrstuvwxyz "
ejecucion = true
frase = " "


--------------INGRESAR ENCABEZADO---------------


function encabezado()
    print("*************")
    print("****FINAL****")
    print("*************")
    print("Hoy es: ",hoy)
end

-------------INGRESAR A MENU---------------


function menu()
    print("--MENU DE OPCIONES--")
    print("1) Jugar")
    print("2) Frase")
    print("3) Estadisticas")
    print("4) Acerca de...")
    print("5) Salir")
    io.write("$> ")


    local opcion=io.read()
    if opcion=="1" then
        intentos=5
        numero_secreto=math.random(1,10)
        numero=0
        estado=1
       
    elseif opcion=="2" then
        escribir()
        encriptar()
        desencriptar()
        ejecucion()

    elseif opcion=="3" then
        mostrarEstadisticas()
    elseif opcion=="4" then
        mostrarAcerca()
    elseif opcion== "5" then
        os.exit(0)
    else
        print ("Ingrese una opcion valida")
        print ("pulse enter para continuar")
        io.read()
    end
end



---------------INGRESAR AL JUEGO-----------


--function juego(n)
    --assert(tonumber(n),"Por favor ingresa un numero")
    --return math.random( )*n/ os.clock()

--end

--while true do 
    --print("Indique el valor: ")
    --v=io.read()
    --if v=="q" then
        --os.exit(0)
    --end
    --s,r=pcall(calculo,v)
    --if s then
        --print("El resultado es: "..r)
    --else
        --print("Algo salio mal, intente de nuevo")
        --print(r)
    --end
  
--end


-------------ENCRIPTAR Y DESENCRIPTAR------------


function escribir()
    print("Escribe la frase a encriptar: ")    
    num=io.read()
    frase = tostring(num)
    encriptado = encriptar(frase)
    print(encriptado)
    print("Esta encriptado")
    desencriptado = desencriptar(encriptado)
    print(desencriptado)
    print("Esta desencriptado")
   
end


function encriptar(palabra)
    local l=""
    local texto = string.lower( palabra )
    for i=1,string.len( texto ) do
        local letra = string.sub( texto, i,i )
        local p,f= string.find( alfabeto,letra )
        if p~=nil then
            local simbolo=string.sub(simbolos,p,f)
            l=l..simbolo
        end
    end
    return l
end



function desencriptar(palabra)
    
    local l=""
    local texto=string.lower( palabra )
    for i=1,string.len( texto ) do
        local letra = string.sub( texto, i,i )
        local p,f= string.find( simbolos,"%"..letra )
        if p~=nil then
            local simbolo=string.sub(alfabeto,p,f)
            l=l..simbolo
        end
    end
    return l
end



function ejecucion()
    while ejecucion do
    escribir()
    ejecucion=false
    end    
end






-------------ESTADISTICAS--------------


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


-------------ACERCA DE...-------------


function mostrarAcerca(...)
    encabezado()
    local f=io.open ("acerca.txt")
    local texto= f: read("*a")
    f:close()
    print(texto)
    print("pulse enter para continuar...")
    io.read()
end
