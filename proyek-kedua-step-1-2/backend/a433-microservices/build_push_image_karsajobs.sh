#!/bin/bash
### Membuat Docker Image
docker build -t karsajobs .

### Ubah Nama Docker Images untuk upload ke DOcker HUB 
docker tag karsajobs:latest ronalyulyanto/karsajobs

### Login ke Docker Hub menggunakan terminal (CLI)
echo $PASSWORD_DOCKER_HUB | docker login -u ronalyulyanto --password-stdin

### Upload/Push docker image ke Docker HUB
docker push ronalyulyanto/karsajobs:latest
