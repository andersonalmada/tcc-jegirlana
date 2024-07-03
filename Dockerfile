FROM eclipse-temurin:17-jre

ADD /main.jar /app.jar
ADD /opentelemetry-javaagent.jar /opentelemetry-javaagent.jar
ADD /opentelemetry-java-instrumentation-extension-demo-1.0-all.jar /opentelemetry-java-instrumentation-extension-demo-1.0-all.jar

ENTRYPOINT java -javaagent:/opentelemetry-javaagent.jar -Dotel.javaagent.extensions=opentelemetry-java-instrumentation-extension-demo-1.0-all.jar -jar /app.jar
