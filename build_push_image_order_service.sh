# Membuat image dengan nama "reynaldi491-docker/karsajobs" dan memberikan tag "latest"
docker build -t reynaldi491-docker/order-service:latest .

# Mengubah nama image menyesuaikan format Github Packages
docker tag reynaldi491-docker/order-service:latest ghcr.io/codewithrey/a433-microservices/reynaldi491-docker/order-service:latest

# Login ke git hub container registry menggunakan personal access token
echo $PAT | docker login ghcr.io -u codewithrey --password-stdin

# Menambahkan image ke Github Container Registry
docker push ghcr.io/codewithrey/a433-microservices/reynaldi491-docker/order-service:latest
