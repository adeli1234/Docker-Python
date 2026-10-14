# Sistmea operativo base
FROM python:3.12-slim
# Se establece el directorio de trabajo dentro del contenedor
WORKDIR /app
# Se copian los archivos de requerimientos al contenedor
COPY requirements.txt .
# --no-cache-dir es para que solo se instalen una vez las librerias y no genere cache
RUN pip install --no-cache-dir -r requirements.txt
# Se copian todos los archivos del proyecto al contenedor
COPY . .
# Exclusivo de Fla libreria Flask exponer el puerto 5000 para que pueda ser accedido desde fuera del contenedor
# - - - EXPOSE 5000
# Python es el interprete que se ejecutará al iniciar el contenedor
CMD ["python", "app.py"]