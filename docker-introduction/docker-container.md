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

## Container Exec

- Saat kita membuat container, aplikasi yang terdapat di dalam container hanya bisa di akses dari dalam container
- Oleh karena itu, kadang kita perlu masuk ke dalam container nya itu sendiri
- Untuk masuk ke dalam container, kita bisa menggunakan fitur Container Exec, dimana digunakan untuk mengeksekusi kode program yang terdapat di dalam container

## Masuk ke Container

- Untuk masuk ke dalam container, kita bisa mencoba mengeksekusi program bash script yang terdapat di dalam container dengan bantuan Container Exec: 
    - `docker container exec -i -t container-id /bin/bash`
    - `docker container exec -i -t container-name /bin/bash`
- `-i` adalah argumen interaktif, menjaga input tetap aktif 
- `-t` adalah argumen untuk alokasi pseudo-TTY (terminal akses)
- `/bin/bash` adalah contoh program yang terdapat di dalam container

## Container Port

- Saat menjalankan container, container terisolasi di dalam docker
- Artinya sistem host (misal laptop kita), tidak bias mengakses aplikasi yang ada di dalam container secara langsung, salah satunya adalah dengan menggunakan Container Exec untuk masuk ke dalam container nya
- Biasanya, aplikasi berjalan pada port tertentu, misal saat kita menjalankan aplikasi Redis, dia berjalan pada port 6379, kita bisa melihat port apa yang digunakan ketika melihat semua daftar container

## Port Forwarding

- Docker memiliki kemampuan untuk melakukan port forwarding, yaitu meneruskan sebuah port yang terdapat pada sistem host ke dalam docker container
- Cara ini cocok jika kita ingin mengekspos port yang terdapat di container ke luar melalui sistem host nya

## Melakukan Port Forwarding
- Untuk melakukan port forwarding, kita bisa menggunakan perintah berikut ketika membuat container nya:
    - `docker container create --name container-name --publish posthost:postcontainer image:tag`
- Jika kita ingin melakukan port forwarding lebih dari satu, kita bisa tambahkan dua kali parameter `--publish`
- `--publish` juga bisa disingkat menggunakan `-p`

## Container Environment Variable

- Saat membuat aplikasi, menggunakan Environment Variable adalah salah satu teknik agar konfigurasi aplikasi dapat di ubah secara dinamis
- Dengan menggunakan environment variable, kita bisa mengubah-ubah konfigurasi aplikasi tanpa harus mengubah kode aplikasi nya lagi
- Docker Container memiliki parameter yang bisa kita gunakan untuk mengirim environment variable ke aplikasi yang terdapat di dalam container

## Menambah Environment Variable

- Untuk menambahkan environment variable, kita bisa menggunakan perintah `--env` atau `-e`, contoh:
    - `docker container create --name container-name --env KEY="value" --env KEY2="value" image:tag`