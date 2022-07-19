tfile=open("/sys/bus/w1/devices/10-00080255f724/w1_slave") # id датчика DS18B20
ttext=tfile.read()
tfile.close()
temp=ttext.split("\n")[1].split(" ")[9]
temperature=float(temp[2:])/1000 # получить число целого типа и разделить его на 1000 чтобы получить действительное значение температуры
fealing = 0
if temperature > 20:
 fealing = 'Тепло :)'
elif temperature < 20:
 fealing = 'Прохладно :('
print ("\n","\033[36m"' Температура на DS18B20', "    +%.2f"%temperature, '°C', "   ", fealing,"\n")
