print ("Ejemplos de tablas como listas")

lenguajes={"hp","c","python","lua","js"}
tablaMixta={5,8,"Cam",true}






------tabla tipo listas----
print ("Ejemplos de tablas como listas")

lenguajes={"hp","c","python","lua","js"}
tablaMixta={5,8,"Cam",true}


tablaMixta[5]= "Diaz"
lenguajes[6]="perl"

print (lenguajes[4])
print (tablaMixta[3])
print ("La cantidad de elementos de la tabla de lenguajes es:")
print(#lenguajes)

table.insert(lenguajes,"dart")
print("La cantidad de elementos de la tabla de lenguajes es:")
print(#lenguajes)

table.remove (lenguajes,2)
print("La cantidad de elementos de la tabla de lenguajes es:")
print(#lenguajes)



----------
print ("Ejemplos de tablas como listas")

lenguajes={"hp","c","python","lua","js"}
tablaMixta={5,8,"Cam",true}


print("Los datos de la tabla de lenguajes")
for indice,valor in ipairs(lenguajes) do
    print (indice,valor)
end

tablaMixta[5]= "Diaz"
lenguajes[6]="perl"

print (lenguajes[4])
print (tablaMixta[3])
print ("La cantidad de elementos de la tabla de lenguajes es:")
print(#lenguajes)

table.insert(lenguajes,"dart")
print("La cantidad de elementos de la tabla de lenguajes es:")
print(#lenguajes)

table.remove (lenguajes,2)
print("La cantidad de elementos de la tabla de lenguajes es:")
print(#lenguajes)
----ordenar lenguajes

table.sort(lenguajes)
print ("***Mostrar lenguajes***")
for indice,valor in ipairs(lenguajes) do
    print(indice,valor)
end


------respuesta------
-----Ejemplos de tablas como listas
-----Los datos de la tabla de lenguajes
-----1   hp
-----2   c
-----3   python
-----4   lua
-----5   js
-----lua
-----Cam
-----La cantidad de elementos de la tabla de lenguajes es:
----6
----La cantidad de elementos de la tabla de lenguajes es:
-----7
-----La cantidad de elementos de la tabla de lenguajes es:
------6
-----***Mostrar lenguajes***
----1   dart
----2   hp
----3   js
----4   lua
----5   perl
----6   python


print ("TABLAS ASOCIATIVAS")

misdatos={}
misdatos["nombre"]="Cam"
misdatos["apellidos"]="Diaz Rodriguez"
------no va a aparecer =0
print(#misdatos)
--------
print(misdatos.nombre,misdatos.apellidos)
edad=20
table.insert(misdatos,edad)
for clave,valor in pairs(misdatos) do
  print(clave,"=>",valor)
end