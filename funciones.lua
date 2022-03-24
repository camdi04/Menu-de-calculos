
function saludar (nombre)
    print("Hola "..nombre)    
end

despedir=function ()
    print("Chao")
end

function datos(...)
    print(...)
end

datos(1,5,"A")


--------------
--costo=tb+(tkm*0.5)+(tmi*0.3)
d=1.2
t=15

costo=12+(d*0.5)+(t*0.3)
print(costo)

------
tarifas={tb=12,tkm=0.5,tmi=0.3}
sitios={"Sector 1","Sector 2","Sector 3","Sector 4"}
parametros={
    s1={
        s2={d=8,t=12},
        s3={d=25,t=110},
        s4={d=74,t=88}
    },
    s2={
        s1={d=8,t=12},
        s3={d=15,t=32}
    }
}
ejecucion=true

function mostarSectores()
    for i=1,#sitios do
        print(i..")"..sitios[i])
    end
end

function calcularCosto(origen,destino)
    local costo=0
    local codigoOrigen=codigos(origen)
    local codigoDestino=codigos(destino)

    print(parametros[codigoOrigen][codigoDestino].t,parametros[codigoOrigen][ codigoDestino].d)
    costo=tarifas.tb+(tarifas.tkm*d)+(tarifas.tmi*t)
    return costo    
end

function codigos(numero_sector)
    return"s".. numero_sector
end

while ejecucion do
    print ("*******************")
    print ("Tarifas de entrega")
    print ("*******************")
    print ("Seleccion sector de origen")
    mostarSectores()
    local origen=io.read
    print ("Seleccion sector de destino")
    mostarSectores()
    local destino=io.read()


    print ("desde: "..sitios[tonumber(origen)])
    print ("hasta: "..sitios[tonumber(destino)])
    calcularCosto(origen,destino)
    

    if(origen=="0") then
        ejecucion=false
    end
end