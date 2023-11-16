export PAT=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


# Membuat image dengan nama "reynaldi491-docker/karsajobs" dan memberikan tag "latest"
docker build -t reynaldi491-docker/karsajobs:latest .

# Mengubah nama image menyesuaikan format Github Packages
docker tag reynaldi491-docker/karsajobs:latest ghcr.io/codewithrey/a433-microservices/reynaldi491-docker/karsajobs:latest

# Login ke git hub container registry menggunakan personal access token
echo $PAT | docker login ghcr.io -u codewithrey --password-stdin

# Menambahkan image ke Docker Hub
docker push ghcr.io/codewithrey/a433-microservices/reynaldi491-docker/karsajobs:latest
