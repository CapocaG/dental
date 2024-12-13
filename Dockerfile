# Imagen base con JDK para ejecutar el JAR
FROM openjdk:17-jdk-alpine

# Exponer el puerto que utilizará la aplicación
EXPOSE 8080

# Copiar el archivo JAR directamente desde la carpeta local
COPY target/SpringSecurityJWT-0.0.1-SNAPSHOT.jar /app/SpringSecurityJWT-0.0.1-SNAPSHOT.jar

# Establecer el punto de entrada para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app/SpringSecurityJWT-0.0.1-SNAPSHOT.jar"]
