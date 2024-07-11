# Используем базовый образ Python
FROM python:3.9-slim

# Установка зависимостей
RUN pip install --upgrade pip
RUN pip install flask gunicorn

# Копирование исходного кода приложения в контейнер
WORKDIR /app
COPY . /app

# Запуск приложения
CMD ["gunicorn", "-b", "0.0.0.0:80", "application:app"]
