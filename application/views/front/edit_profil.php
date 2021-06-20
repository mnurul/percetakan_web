<!-- SECTION HEADLINE -->
	<div class="section-headline-wrap">
		<div class="section-headline">
			<h2>Edit Profi</h2>
			<p>Beranda<span class="separator">/</span><span class="current-section">Edit Profi</span></p>
		</div>
	</div>
	<!-- /SECTION HEADLINE -->

	<!-- SECTION -->
	<div class="section-wrap">
		<div class="section demo ">
			<!-- FORM POPUP -->
			<div class="form-popup" style="float: none;">
			
				
			

				<!-- FORM POPUP CONTENT -->
				<div class="form-popup-content">
					<h4 class="popup-title">Edit Akun Anda</h4>
					<!-- LINE SEPARATOR -->
					<hr class="line-separator">
					<!-- /LINE SEPARATOR -->
					<?php if ($this->session->flashdata('error')): ?>
						
						<small class="text-danger" style="color: red"><?= $this->session->flashdata('error') ?></small>
					<?php endif ?>

					<?php if ($this->session->flashdata('berhasil')): ?>
						
						<small class="text-danger" style="color: green"><?= $this->session->flashdata('berhasil') ?></small>
					<?php endif ?>
					<form id="register-form" method="post" action="<?= base_url('pelanggan/update') ?>" enctype="multipart/form-data">
						<label for="email" class="rl-label required">Email </label>
						<input type="email" id="email" value="<?= $data_edit->plg_email; ?>" name="email" placeholder="Masukkan Alamat Email..." required>
						<input type="hidden" id="email" value="<?= $data_edit->plg_email; ?>" name="old_email" placeholder="Masukkan Alamat Email..." required>


						<label for="username" class="rl-label">Username</label>
						<input type="text" id="username" value="<?= $data_edit->plg_username; ?>" name="username" placeholder="Masukkan Username  ..." required>
						<input type="hidden" id="username" value="<?= $data_edit->plg_username; ?>" name="old_username" placeholder="Masukkan Username  ..." required>

						<label for="password" class="rl-label required">Password</label>
						<small>*Jangan diisi jika tidak dirubah</small>
						<input type="password" id="password" name="password" placeholder="Enter your password here..." >

						<label for="nama" class="rl-label">Nama</label>
						<input type="text" id="nama" value="<?= $data_edit->plg_nama; ?>" name="nama" placeholder="Masukkan Nama  ..." required>

						<label for="jkelamin" class="rl-label">Jenis Kelamin</label>
						<select id="jkelamin" name="jkelamin" required>
							<option>--Pilih Jenis Kelamin</option>
							<option <?= $data_edit->plg_jkelamin == 'Laki - Laki' ? 'selected=selected' : '' ; ?> value="Laki - Laki">Laki - Laki</option>
							<option <?= $data_edit->plg_jkelamin == 'Perempuan' ? 'selected=selected' : '' ; ?> value="Perempuan">Perempuan</option>
						</select>
						<br>
						<br>
						<label for="alamat" class="rl-label">Alamat</label>
						<input type="text" id="alamat" value="<?= $data_edit->plg_alamat; ?>" name="alamat" placeholder="Masukkan alamat  ..." required>

						<label for="notelp" class="rl-label">No Telp/Hp</label>
						<input type="text" id="notelp" value="<?= $data_edit->plg_telepon; ?>" name="notelp" placeholder="Masukkan No Telp/Hp  ..." required>

						<label for="image" class="rl-label">Foto Profil</label>
						<input type="file" id="image" name="image" placeholder="Masukkan Foto Profil  ...">


						
						
						<button class="button mid secondary">Simpan <span class="primary">Perubahan</span></button>
						<!-- <a href="<?= base_url('login') ?>"><button type="button" class="button mid primary">Masuk <span class="primary">/ Login!</span></button></a> -->
					</form>
				</div>
				<!-- /FORM POPUP CONTENT -->
			</div>
			<!-- /FORM POPUP -->

			

			<div class="clearfix"></div>
		</div>
	</div>
	<!-- /SECTION -->