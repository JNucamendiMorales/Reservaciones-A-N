FROM python:3.13-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Actualiza e instala dependencias del sistema necesarias para mariadb y compilación
RUN apt-get update && apt-get install -y gcc libmariadb-dev pkg-config && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /app/

# Copiamos el script wait-for-it y le damos permisos de ejecución
COPY wait-for-it.sh /app/wait-for-it.sh
RUN chmod +x /app/wait-for-it.sh

EXPOSE 8000

# Usamos el script wait-for-it para esperar a que la DB esté lista
CMD ["./wait-for-it.sh", "db:3306", "--", "python", "manage.py", "runserver", "0.0.0.0:8000"]
