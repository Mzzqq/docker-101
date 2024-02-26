## Bind Mounts

- Bind Mounts merupakan kemampuan melakukan mounting (sharing) file atau folder yang terdapat di sistem host ke container yang terdapat pada docker 
- Fitur ini sangat berguna ketika misal ingin mengirim konfigurasi dari luar container atau misal menyimpan data yang dibuat di aplikasi di dalam container ke dalam folder sistem host
- Jika file atau folder tidak ada di sistem host, secara otomatis akan dibuatkan oleh sistem docker 
- Untuk melakukan mounting, kita bisa menggunakan parameter `--mount` ketika membuat container
- Isi dari parameter `--mount` memiliki aturan tersendiri

## Parameter Mount

| Parameter   | Keterangan                                                                              |
|-------------|-----------------------------------------------------------------------------------------|
| type        | Tipe mount, bind atau volume                                                            |
| source      | Lokasi file atau folder di sistem host                                                  |
| destination | Lokasi file atau folder di container                                                    |
| readonly    | Jika ada, maka file atau folder hanya bisa <br/>dibaca di container, tidak bisa ditulis |