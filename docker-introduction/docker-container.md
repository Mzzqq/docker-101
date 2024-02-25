## Docker Container

- Jika Docker Image seperti installer aplikasi, maka Docker Container mirip seperti aplikasi hasil installernya
- Satu Docker Image bisa digunakan untuk membuat beberapa Docker Container, asalkan nama Docker Container nya berbeda
- Jika kita sudah membuat Docker Container, maka Docker Image yang digunakan tidak bisa dihapus. Hal ini dikarenakan sebenarnya Docker Container tidak meng-_copy_ isi Docker Image, tapi hanya menggunakan isinya saja

## Status Container

- Saat kita membuat container, secara default container tersebut tidak akan berjalan
- Mirip seperti kita menginstall aplikasi, jika kita tidak jalankan, maka aplikasi tersebut tidak akan berjalan. begitu juga dengan container.
- Oleh karena itu, setelah membuat container, kita perlu menjalankannya jika memang ingin menjalankan container nya

## Melihat Container

- Untuk melihat semua container, baik yang sedang berjalan atau tidak di Docker Daemon (Server), bisa dengan menggunakan perintah:
    - `docker container ls -a`
- Sedangkan jika kita ingin melihat container yang sedang berjalan saja, kita bisa gunakan perintah:
    - `docker container ls`
    
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

## Menghapus Container

- Untuk menghapus container yang sudah berhenti, bisa dengan menggunakan perintah:
    - `docker container rm container-id`
    - `docker container rm container-name` 

## Container Log

- Kadang saat terjadi masalah dengan aplikasi yang terdapat pada container, seringkali kita ingin melihat detail dari log aplikasinya
- Hal ini dilakukan untuk melihat detail kejadian apa yang terjadi di aplikasi, sehingga akan memudahkan kita ketika mendapat masalah

## Melihat Container Log

- Untuk melihat log aplikasi di container kita, bisa dengan menggunakan perintah:
    - `docker container logs container-id`
    - `docker container logs container-name`
- Atau, jika ingin melihat log secara realtime, bisa dengan menggunakan perintah:
    - `docker container logs -f container-id`
    - `docker container logs -f container-name`