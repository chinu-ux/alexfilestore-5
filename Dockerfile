FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install compiler tools (for TgCrypto)
RUN apt-get update && apt-get install -y gcc libffi-dev && rm -rf /var/lib/apt/lists/*

# Copy requirements file
COPY requirements.txt requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files into container
COPY . .

# Run the bot
CMD ["python3", "main.py"]