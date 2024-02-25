## Docker Image

- Docker Image mirip seperti installer aplikasi, dimana didalam Docker Image terdapat aplikasi dan dependensi
- Sebelum kita bisa menjalankan aplikasi di Docker, kita perlu memastikan memiliki Docker Image aplikasi tersebut 
- Untuk melihat Docker Image yang terdapat di dalam Docker Daemon kita bisa menggunakan perintah: 
    - `docker image ls`

## Download Docker Image

- Untuk download Docker Image dari Docker Registry, kita bisa gunakan perintah: 
    - `docker image pull imagename:tag`
    - `docker pull imagename`
- Contoh: 
    - `docker image pull redis:latest`
    - `docker pull redis`
- Kita bisa mencari Docker Image yang ingin kita download di https://hub.docker.com

## Menghapus Docker Image

- Jika kita tidak ingin menggunakan Docker Image yang sudah kita download, kita bisa gunakan perintah:
    - `docker image rm imagename:tag`
    - `docker image remove imagename:tag`
    - `docker rmi imagename:tag`

## Membuat Container

- Untuk membuat container kita bisa menggunakan perintah:
    - `docker container create --name containername imagename:tag`
- Jika image yang digunakan belom di download maka docker akan secara otomatis mendownload image tersebut
- Nama container yang dibuat harus _unique_, artinya tiap nama container yang dibuat harus berbeda-beda

## Menjalankan Container

- Untuk menjalankan container yang sudah dibuat, bisa dengan menggunakan perintah:
    - `docker container start container-id`
    - `docker container start container-name`
- Contoh:
    - `docker container start a4b805ed1a0e`
    - `docker container start redis-example`

## Menghentikan Container

- Untuk menghentikan container yang sedang berjalan, bisa dengan menggunakan perintah:
    - `docker container stop container-id`
    - `docker container stop container-name`