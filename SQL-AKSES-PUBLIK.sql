-- Jalankan di Supabase > SQL Editor.
-- Pengunjung (tanpa login) = hanya BACA. Admin (login) = baca + tambah/ubah/hapus.

-- 1) Izinkan pengunjung membaca data
drop policy if exists "public read members" on public.members;
drop policy if exists "public read expeditions" on public.expeditions;
drop policy if exists "public read media" on public.media;
drop policy if exists "public read settings" on public.settings;
create policy "public read members"     on public.members     for select to anon using (true);
create policy "public read expeditions" on public.expeditions for select to anon using (true);
create policy "public read media"       on public.media       for select to anon using (true);
create policy "public read settings"    on public.settings    for select to anon using (true);

-- 2) Izinkan pengunjung melihat foto/video galeri (bucket wba-media)
drop policy if exists "public read wba-media" on storage.objects;
create policy "public read wba-media" on storage.objects
  for select to anon using (bucket_id = 'wba-media');

-- Policy untuk role "authenticated" (admin) yang sudah ada tetap dipakai untuk tulis/ubah/hapus.
