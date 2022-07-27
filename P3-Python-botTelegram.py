import time, datetime
import telepot
from telepot.loop import MessageLoop
now = datetime.datetime.now()
def action(msg):
     chat_id = msg['chat']['id']
     command = msg['text']
     print(f'Received: %s' % command)
     if command == '/hello':
         telegram_bot.sendMessage (chat_id, str("Приветствую) Я бот estatic. Как жизнь молодая? )"))
     elif command == '/time':
         telegram_bot.sendMessage(chat_id, str(now.hour)+str(":")+str(now.minute))
     elif command == '/logo':
         telegram_bot.sendPhoto (chat_id, photo = "https://mega-stars.ru/actresses/charlize_theron.php")
     elif command == '/file':
         telegram_bot.sendDocument(chat_id, document=open('/home/estatic/pogoda.py'))
     elif command == '/audio':
         telegram_bot.sendAudio(chat_id, audio=open('/home/pi/test.mp3'))
     elif command == '/axeum':
         telegram_bot.sendMessage (chat_id, str("Чтобы приобрести товар по цене - дилер, скиньте @estatic_fear link на этот товар и он вам отправит номер заказа.\nСайт: https://tomsk.axeum.ru/"))
     else:
         telegram_bot.sendMessage (chat_id, str("бля... дружище, на такую команду я не запрограммирован, но мой разработчик скоро пофиксит это...\nвведите / для списка комманд"))
 #print(f'на такую команду я не запрограммирован( введите / для списка комманд')
 telegram_bot = telepot.Bot('Use this token to access the HTTP API')
 print (telegram_bot.getMe())
 MessageLoop(telegram_bot, action).run_as_thread()
 print(f'Up and Running....')
 while 1:
     time.sleep(10)
