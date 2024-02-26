## Docker Volume

- Fitur bind mounts sudah ada sejak docker versi awal, di versi terbaru direkomendasikan menggunakan Docker Volume
- Docker Volume mirip dengan Bind Mounts, bedanya adalah terdapat pada management volume, dimana kita bisa membuat volume, melihat daftar volume dan menghapus volume
- Volume sendiri dianggap storage yang digunakan untuk menyimpan data, bedanya dengan Bind Mounts, Bind Mounts datanya disimpan di sistem host, sedangkan pada volume data di manage oleh docker