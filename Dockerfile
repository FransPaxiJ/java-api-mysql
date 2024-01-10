# Imagen base
FROM maven:3.9.6-amazoncorretto-8-al2023

# Instalar git
RUN apt-get update && \
    apt-get install -y git

# Clonar el repositorio
RUN git clone https://github.com/FransPaxiJ/java-api.git /usr/src/app/

# Definir el directorio de trabajo
WORKDIR /usr/src/app/

# Exponer el puerto 8080
EXPOSE 8080

# Especificar el comando para ejecutar la aplicación con Maven
CMD ["mvn", "spring-boot:run"]