## Container
- Berbeda dengan VM, Container sendiri berfokus pada sisi aplikasi
- Container sendiri sebenarnya berjalan diatas aplikasi Container Manager yang berjalan di sistem operasi
- Yang membedakan dengan VM adalah pada Container, kita bisa mem-_package_ aplikasi dan _dependency_-nya tanpa harus menggabungkan sistem operasi
- Container akan menggunakan sistem operasi host dimana Container Manager nya berjalan. Oleh karena itu, Container akan lebih hemat resource dan lebih cepat jalan nya karena tidak butuh sistem operasi sendiri
- Ukuran Container biasanya hanya hitungan MB, berbeda dengan VM yang bisa sampa GB karena di dalamnya ada sistem operasinya

## Diagram Container
![Diagram Container](/assets/Diagram%20Container.png)