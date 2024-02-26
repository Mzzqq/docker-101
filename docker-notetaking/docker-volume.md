## Docker Volume

- Fitur bind mounts sudah ada sejak docker versi awal, di versi terbaru direkomendasikan menggunakan Docker Volume
- Docker Volume mirip dengan Bind Mounts, bedanya adalah terdapat pada management volume, dimana kita bisa membuat volume, melihat daftar volume dan menghapus volume
- Volume sendiri dianggap storage yang digunakan untuk menyimpan data, bedanya dengan Bind Mounts, Bind Mounts datanya disimpan di sistem host, sedangkan pada volume data di manage oleh docker

## Melihat Docker Volume

- Saat kita membuat container, dimanakah data tu disimpan, secara default semua data container disimpan di dalam volume
- Jika kita coba melihat docker volume, maka akan lihat bahwa ada banyak volume yang sudah terbuat, walaupun kita belum pernah membuatnya sama sekali
- kita bisa menggunakan perintah berikut untuk melihat daftar volume:
    - `docker volume ls`