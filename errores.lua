function calculo(n)
    assert(tonumber(n),"Por favor ingresa un numero")
    return math.random( )*n/ os.clock()

end

while true do 
    print("Indique el valor: ")
    v=io.read()
    if v=="q" then
        os.exit(0)
    end
    s,r=pcall(calculo,v)
    if s then
        print("El resultado es: "..r)
    else
        print("Algo salio mal, intente de nuevo")
        print(r)
    end
   
end