# WBA Expedition Tracker — Supabase Cloud Edition

## Perubahan
- Penyimpanan ekspedisi, anggota, dan pengaturan menggunakan Supabase Postgres.
- Foto/video galeri diunggah ke Supabase Storage bucket `wba-media`.
- Semua perangkat membaca database online yang sama.
- Login/daftar email-password ditambahkan.

## Konfigurasi
Project URL dan Publishable Key sudah diisi pada `script.js`:
- URL: https://bxpgjjxnskpudphsimbz.supabase.co
- Key: publishable key (aman untuk browser; jangan pernah menaruh Secret/service_role key di frontend).

## Prasyarat Supabase
Pastikan SQL awal sudah dijalankan sehingga tabel `members`, `expeditions`, `media`, `settings` tersedia.
Pastikan RLS aktif dan policy untuk role `authenticated` tersedia di keempat tabel.
Pastikan Storage bucket `wba-media` tersedia dan policy Storage untuk `authenticated` tersedia.
Di Authentication > Providers, aktifkan Email. Untuk pendaftaran, atur konfirmasi email sesuai kebutuhan.

## Menjalankan
Unggah isi folder `westborneoalliance-main` ke repository GitHub Pages, atau jalankan lewat server lokal (mis. VS Code Live Server). Buka website menggunakan HTTPS.

## Penting
- Semua orang yang memiliki akun terdaftar dan berhasil login mendapat akses baca/tulis sesuai policy SQL saat ini. Batasi pendaftaran akun dan bagikan akses hanya kepada pengurus tepercaya.
- Data IndexedDB lama tidak otomatis dipindahkan. Versi ini memulai penyimpanan cloud yang baru. Jika data lokal lama masih diperlukan, ekspor backup dari versi lama terlebih dahulu.
- Jangan gunakan Secret Key / service_role di browser.
- Storage bucket dibuat private; galeri memakai signed URL sementara.
