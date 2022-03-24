simbolos="!|&]#$[<(%{>*/;@}:-?+=.,_(^"
alfabeto="abcdefghijklmonpqrstuvwxyz "

ejecucion = true
frase = " "


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
    while ejecucion do
        escribir()
        ejecucion=false
    end
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






