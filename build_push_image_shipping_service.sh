# Membuat image dengan nama "reynaldi491-docker/shipping-service" dan memberikan tag "latest"
docker build -t reynaldi491-docker/shipping-service:latest .

# Mengubah nama image menyesuaikan format Github Packages
docker tag reynaldi491-docker/shipping-service:latest ghcr.io/codewithrey/a433-microservices/reynaldi491-docker/shipping-service:latest

# Login ke git hub container registry menggunakan personal access token
echo $PAT | docker login ghcr.io -u codewithrey --password-stdin

# Menambahkan image ke Github Container Registry
docker push ghcr.io/codewithrey/a433-microservices/reynaldi491-docker/shipping-service:latest
