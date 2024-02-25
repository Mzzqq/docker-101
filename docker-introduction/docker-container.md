## Docker Container

- Jika Docker Image seperti installer aplikasi, maka Docker Container mirip seperti aplikasi hasil installernya
- Satu Docker Image bisa digunakan untuk membuat beberapa Docker Container, asalkan nama Docker Container nya berbeda
- Jika kita sudah membuat Docker Container, maka Docker Image yang digunakan tidak bisa dihapus. Hal ini dikarenakan sebenarnya Docker Container tidak meng-_copy_ isi Docker Image, tapi hanya menggunakan isinya saja

## Status Container
- Saat kita membuat container, secara default container tersebut tidak akan berjalan
- Mirip seperti kita menginstall aplikasi, jika kita tidak jalankan, maka aplikasi tersebut tidak akan berjalan. begitu juga dengan container.
- Oleh karena itu, setelah membuat container, kita perlu menjalankannya jika memang ingin menjalankan container nya