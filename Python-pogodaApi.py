import pyowm # Для возможности проверять погоду в различных городах нашей планеты
from pyowm.utils.config import get_default_config # метод необходимый для установки русского языка
config_dict = get_default_config()  # получаем настройки библиотеки и ...
config_dict['language'] = 'ru'  # ...устанавливаем для результатов запроса русский язык

# config_dict можно не указывать, тогда язык будет английский
owm = pyowm.OWM('11c0d3dc6093f7442898ee49d2430d20', config_dict)
mgr = owm.weather_manager()

city = 'Томск' # для любого города закомментируйте эту строку
# для любого города раскомментируйте следующую строку
#city = input('Город:')
observation = mgr.weather_at_place(city)
w = observation.weather

wind = w.wind()
clouds = w.detailed_status
temperature = round(w.temperature('celsius')['temp'], 1)

# вывод в зависимости от температуры
fealing = None
if temperature < 20:
 fealing = 'прохладно'
elif 20 < temperature < 25:
 fealing = 'тепло'
elif temperature > 25:
 fealing = 'жарко'

# вывод
print("\033[36m"f'  В {city}е   {temperature} °C   {clouds}',"  ",fealing, "\n") # оставьте {city} вместо {city}e
#print("\033[36m"f' In {city} now {temperature} °C     {clouds}', "   ", fealing, "\n")
#print(w.sunrise_time(timeformat='iso')) # Prints time in GMT timezone
#print(w.sunset_time(timeformat='iso')) # Prints time in GMT timezone
#print(w)
