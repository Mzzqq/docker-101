## Docker Image

- Docker Image mirip seperti installer aplikasi, dimana didalam Docker Image terdapat aplikasi dan dependensi
- Sebelum kita bisa menjalankan aplikasi di Docker, kita perlu memastikan memiliki Docker Image aplikasi tersebut 
- Untuk melihat Docker Image yang terdapat di dalam Docker Daemon kita bisa menggunakan perintah: `docker image ls`

## Download Docker Image

- Untuk download Docker Image dari Docker Registry, kita bisa gunakan perintah: `docker image pull imagename:tag` atau `docker pull imagename`
- Kita bisa mencari Docker Image yang ingin kita download di https://hub.docker.com