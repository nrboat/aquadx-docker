FROM openjdk:17-jdk-alpine
WORKDIR /app
RUN apk add wget curl && wget https://github.com/hykilpikonna/AquaDX/releases/download/nightly/aqua-nightly.jar
# 尝试创建本地sql数据库
RUN mkdir /app/data && touch db.sqlite && mv db.sqlite /app/data
CMD ["java","-jar","aqua-nightly.jar"]
