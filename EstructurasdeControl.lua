


----ciclo else if---
edad=25

if edad<18 then 
    print("Tu eres menor de edad")
elseif edad>=18 and edad <=25 then
    print ("Eres un joven")
elseif edad >25 and edad<=60 then
    print ("Eres un adulto")
else print ("Eres un adulto mayor")
end




edad=75
nombre= "Camila"

if nombre== "Diaz" then
    print("Holaaaaaaaaa")
else 
    print ("No te conozco")
end
if edad<18 then 
    print("Tu eres menor de edad")
elseif edad>=18 and edad <=25 then
    print ("Eres un joven")
elseif edad >25 and edad<=60 then
    print ("Eres un adulto")
else print ("Eres un adulto mayor")
end


-------ciclo for------
for i=1,20 do
    print(i)
end



------Incrementa de 2 en 2-------
for i=1,20,2 do
    print(i)
end


for i=1,20,5.5 do
    print(i)
end

------while------

ejecutar=true
conteo=0
while ejecutar do
  print ("Estoy en ejecucion",conteo)
  conteo=conteo+1
  if conteo>10 then
    ejecutar=false
    break
  end
end



ejecutar= true
conteo=0
print ("Inicio")
while ejecutar do
  conteo=math.random()
  print(conteo)
  if conteo>0.95 then
    break
  end
end


ejecutar=true
conteo=0
ciclo=0
print ("inicio")
while ejecutar do
  conteo=math.random()
  ciclo=ciclo+1
  print ("ciclo",conteo)
  if conteo>0.99 then
    break
  end
end


-----Goto labels-----
print ("Inicio del programa")
ciclo=0

::inicio::
print("ciclo",ciclo)
ciclo=ciclo+1

if ciclo>100 then
  goto fin
end

goto inicio

::fin::
print ("Fin del programa")
print ("Chaooooo")
