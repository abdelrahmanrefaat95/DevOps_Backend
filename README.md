docker build -t java-app:latest .

docker run -d -p 8080:8080 java-app:latest
