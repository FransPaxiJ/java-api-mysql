# Imagen base
FROM maven:3.9.6-amazoncorretto-8-al2023

# Instalar git
RUN yum update && \
    yum install -y git

# Clonar el repositorio
RUN git clone https://github.com/FransPaxiJ/java-api-mysql.git /usr/src/app/

# Definir el directorio de trabajo
WORKDIR /usr/src/app/

# Exponer el puerto 8080
EXPOSE 8080

#RUN mvn -version

#RUN mvn clean package

#RUN mvn clean install

#RUN mvn -e spring-boot:run
# Especificar el comando para ejecutar la aplicación con Maven
CMD ["mvn", "-e", "spring-boot:run"]