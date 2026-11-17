# WBA Expedition Tracker

Website dokumentasi ekspedisi untuk WBA – West Borneo Alliance.

## Menjalankan di Windows 11
1. Ekstrak folder `WBA-EXPEDITION-TRACKER`.
2. Buka folder tersebut menggunakan Visual Studio Code.
3. Pasang ekstensi **Live Server** (Ritwick Dey) jika belum ada.
4. Klik kanan `index.html` → **Open with Live Server**.
5. Website akan terbuka di browser.

Bisa juga membuka `index.html` langsung di browser modern, tetapi Live Server direkomendasikan agar IndexedDB bekerja konsisten.

## Fitur
- Dashboard statistik ekspedisi.
- CRUD ekspedisi dan anggota.
- Riwayat, pencarian, dan filter.
- Galeri foto/video lokal.
- Peta lokasi melalui koordinat dan tautan OpenStreetMap.
- Mountain Passport berdasarkan anggota peserta.
- Laporan tahunan, ekspor CSV, cetak/simpan PDF.
- Backup dan restore JSON.
- Pengaturan profil komunitas.
- Penyimpanan IndexedDB pada browser/perangkat.

## Catatan penyimpanan dan privasi
Versi ini adalah **local-first**. Data disimpan di browser/perangkat yang digunakan, bukan di server. Data tidak otomatis tersinkron ke perangkat lain atau anggota lain. Lakukan backup JSON secara berkala. Hapus data browser dapat menghilangkan database lokal.

File media dibatasi 25 MB per file pada form upload. Kapasitas aktual bergantung pada ruang penyimpanan browser/perangkat.

## Peta
Versi ini menyimpan koordinat latitude/longitude dan menyediakan tautan OpenStreetMap. Peta tertanam interaktif belum diaktifkan; tampilan peta memerlukan koneksi internet dan integrasi penyedia peta.

## PDF
Tombol Cetak/PDF membuka dialog cetak browser. Pilih **Save as PDF** sebagai tujuan printer.

## Struktur
- `index.html` — struktur halaman.
- `style.css` — desain responsif dark dashboard.
- `script.js` — database IndexedDB dan seluruh interaksi.
- `assets/` — tempat aset logo dan gambar komunitas.

Logo WBA belum disertakan karena file logo resmi perlu diberikan oleh pengelola.
