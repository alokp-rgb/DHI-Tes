FROM debian:12-slim
WORKDIR /app
COPY requirements.txt .
RUN apt-get update && apt-get install -y python3-pip && rm -rf /var/lib/apt/lists/*
COPY . .
CMD ["python3", "app.py"]
