# Membuat image dengan nama "reynaldi491-docker/karsajobs-ui" dan memberikan tag "latest"
docker build -t reynaldi491-docker/karsajobs-ui:latest .

# Mengubah nama image menyesuaikan format Github Packages
docker tag reynaldi491-docker/karsajobs-ui:latest ghcr.io/codewithrey/a433-microservices/reynaldi491-docker/karsajobs-ui:latest

# Login ke git hub container registry menggunakan personal access token
echo $PAT | docker login ghcr.io -u codewithrey --password-stdin

# Menambahkan image ke Docker Hub
docker push ghcr.io/codewithrey/a433-microservices/reynaldi491-docker/karsajobs-ui:latest
