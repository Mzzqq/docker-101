## Bind Mounts

- Bind Mounts merupakan kemampuan melakukan mounting (sharing) file atau folder yang terdapat di sistem host ke container yang terdapat pada docker 
- Fitur ini sangat berguna ketika misal ingin mengirim konfigurasi dari luar container atau misal menyimpan data yang dibuat di aplikasi di dalam container ke dalam folder sistem host
- Jika file atau folder tidak ada di sistem host, secara otomatis akan dibuatkan oleh sistem docker 
- Untuk melakukan mounting, kita bisa menggunakan parameter `--mount` ketika membuat container
- Isi dari parameter `--mount` memiliki aturan tersendiri