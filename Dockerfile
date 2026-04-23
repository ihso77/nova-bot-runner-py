FROM python:3.11-alpine

WORKDIR /app

COPY requirements.txt* ./
RUN pip install --no-cache-dir discord.py 2>/dev/null || true

CMD ["sh", "-c", "echo $BOT_CODE_B64 | base64 -d > /app/bot.py && pip install discord.py --quiet 2>/dev/null; python /app/bot.py"]
