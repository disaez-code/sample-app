# Dockerfile para la app Flask

# Usar Python 3.8 como base
FROM python:3.8-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar todos los archivos del directorio actual al contenedor
COPY . .

# Instalar Flask
RUN pip install --no-cache-dir flask

# Exponer el puerto 6666 (el que configuraste en Flask)
EXPOSE 6666

# Comando para ejecutar la app
CMD ["python3", "sample_app.py"]
