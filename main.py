import logging

logging.basicConfig(
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    level=logging.INFO
)
print("🚀 Bot starting...")

from bot import Bot
import pyrogram.utils

pyrogram.utils.MIN_CHANNEL_ID = -1009147483647

if __name__ == "__main__":
    Bot().run()

import time

print("✅ Bot is running... Waiting for messages...")

while True:
    time.sleep(10)