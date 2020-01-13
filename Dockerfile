# Paso a Paso, para que la app funcione en cualquier sistema.
# Alpine -> Un mini OS de LINUX como base o capa principal de docker.
FROM alpine:3.11.2

# Instalar python3 y la ultima version de pip
RUN apk add --no-cache python3-dev && pip3 install --upgrade pip

    # Montar imagen de docker con el alpine
# docker build -t <nombre que le queramos dar a la imagen>
    # Entrar dentro del sistema del linux de docker alpine
# docker run -it <nombreDeLaImagen>

    # Crear una carpeta dentro del sistema operativo de linux para poder almacenar nuestra app

WORKDIR /app

    # Copiar todos los archivos a la carpeta /app para poder almacenar nuestra app
COPY . /app
    # Instalar dependencias del proyecto
RUN pip3 --no-cache install -r requirements.txt

# Lista de ejecuciones
CMD ["python3", "src/main.py"]

# docker container ls -> Para ver que containers se estan ejecutando
# docker images -> ver las imagenes dispopnibles
# docker stop <containerID> -> parar containers que estan ejecutandose
