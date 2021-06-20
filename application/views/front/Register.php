<!-- SECTION HEADLINE -->
	<div class="section-headline-wrap">
		<div class="section-headline">
			<h2>Daftar / Register</h2>
			<p>Beranda<span class="separator">/</span><span class="current-section">Daftar / Register</span></p>
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
					<h4 class="popup-title">Daftar Akun Anda</h4>
					<!-- LINE SEPARATOR -->
					<hr class="line-separator">
					<!-- /LINE SEPARATOR -->
					<?php if ($this->session->flashdata('error')): ?>
						
						<small class="text-danger" style="color: red"><?= $this->session->flashdata('error') ?></small>
					<?php endif ?>
					<form id="register-form" method="post" action="<?= base_url('register/create') ?>" enctype="multipart/form-data">
						<label for="email" class="rl-label required">Email </label>
						<input type="email" id="email" name="email" placeholder="Masukkan Alamat Email..." required>


						<label for="username" class="rl-label">Username</label>
						<input type="text" id="username" name="username" placeholder="Masukkan Username  ..." required>

						<label for="password" class="rl-label required">Password</label>
						<input type="password" id="password" name="password" placeholder="Masukan Password ..." required>

						<label for="nama" class="rl-label">Nama</label>
						<input type="text" id="nama" name="nama" placeholder="Masukkan Nama  ..." required>

						<label for="jkelamin" class="rl-label">Jenis Kelamin</label>
						<select id="jkelamin" name="jkelamin" required>
							<option>--Pilih Jenis Kelamin</option>
							<option value="Laki - Laki">Laki - Laki</option>
							<option value="Perempuan">Perempuan</option>
						</select>
						<br>
						<br>
						<label for="alamat" class="rl-label">Alamat</label>
						<input type="text" id="alamat" name="alamat" placeholder="Masukkan Alamat  ..." required>

						<label for="notelp" class="rl-label">No Telp/Hp</label>
						<input type="text" id="notelp" name="notelp" placeholder="Masukkan No Telp/Hp  ..." required>

						<label for="image" class="rl-label">Foto Profil</label>
						<input type="file" id="image" name="image" placeholder="Masukkan foto profil  ...">


						
						
						<button class="button mid secondary">Register <span class="primary">Now!</span></button>
						<a href="<?= base_url('login') ?>"><button type="button" class="button mid primary">Masuk <span class="primary">/ Login!</span></button></a>
					</form>
				</div>
				<!-- /FORM POPUP CONTENT -->
			</div>
			<!-- /FORM POPUP -->

			

			<div class="clearfix"></div>
		</div>
	</div>
	<!-- /SECTION -->