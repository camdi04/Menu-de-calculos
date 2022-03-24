fecha = os.date("*t")
hoy = fecha.day.."/"..fecha.month.."/"..fecha.year
ejecucion = true
function encabezado()
    print("*************")
    print("****FINAL****")
    print("*************")
    print("Hoy es: ",hoy)
end