simbolos="!|&]#$[<(%{>*/;@}:-?+=.,_(^"
alfabeto="abcdefghijklmonpqrstuvwxyz "
frase="Hola como estas"



function encriptar (palabra)
    local l=""
    local texto= string.lower ( palabra )
    for i=1,string.len( texto ) do
        local letra=string.sub ( texto,i,i )
        local p,f=string.find( alfabeto,letra )
        if p~=nil then
            local simbolos=string.sub(simbolos,p,f)
            l=l..simbolos
        end
    end
    return l
end

function desencriptar (palabra)
    local l=""
    local texto= string.lower( palabra )
    for i=1,string.len( texto ) do
        local letra=string.sub(texto,i,i)
        local p,f=string.find(simbolos,tostring("%"..letra))
        if p~=nil then
            local simbolos=string.sub(alfabeto,p,f)
            l=l..simbolos
        end
    end
    return l
end
cripto= encriptar(frase)
print(cripto)
descripto=desencriptar(cripto)
print (descripto)