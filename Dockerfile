# Sử dụng image Java chính thức cho Spring Boot
FROM openjdk:17-julliet

# Đặt biến môi trường cho thời gian chạy
ENV TZ=Asia/Ho_Chi_Minh

# Tạo thư mục ứng dụng
WORKDIR /app

# Copy file jar sau khi build vào container
COPY target/*.jar app.jar

# Mở port (thường là 8080 với Spring Boot)
EXPOSE 8080

# Lệnh chạy ứng dụng
ENTRYPOINT ["java", "-jar", "app.jar"]
