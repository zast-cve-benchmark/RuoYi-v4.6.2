FROM maven:3.6-openjdk-8 AS builder
WORKDIR /build

# Allow HTTP repositories (Maven 3.8+ blocks HTTP by default)
COPY pom.xml .
COPY ruoyi-admin/pom.xml ruoyi-admin/pom.xml
COPY ruoyi-framework/pom.xml ruoyi-framework/pom.xml
COPY ruoyi-system/pom.xml ruoyi-system/pom.xml
COPY ruoyi-common/pom.xml ruoyi-common/pom.xml
COPY ruoyi-generator/pom.xml ruoyi-generator/pom.xml
COPY ruoyi-quartz/pom.xml ruoyi-quartz/pom.xml
RUN mvn dependency:go-offline -B 2>/dev/null || true
COPY . .
RUN mvn package -DskipTests -B

FROM eclipse-temurin:8-jre
LABEL maintainer="ZAST"
WORKDIR /app

# Install fontconfig for captcha generation
RUN apt-get update && apt-get install -y fontconfig curl && rm -rf /var/lib/apt/lists/*

COPY --from=builder /build/ruoyi-admin/target/ruoyi-admin.jar /app/ruoyi-admin.jar
COPY sql/ /app/sql/

# Update application config for Docker environment
RUN sed -i 's|D:/ruoyi/uploadPath|/app/uploadPath|g' /app/ruoyi-admin.jar || true

EXPOSE 80

ENTRYPOINT ["java", "-jar", "/app/ruoyi-admin.jar"]
