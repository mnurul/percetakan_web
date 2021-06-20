<style type="text/css">
	.button.big span.currency:before {
		content: 'Rp.';
		font-size: 18px;
		position: relative;
		top: -4px;
		left: -1px;
	}
</style>
<!-- SECTION HEADLINE -->
<div class="section-headline-wrap">
	<div class="section-headline">
		<h2><?= $produk->produk_nama ?></h2>
		<p>Beranda<span class="separator">/</span>Produk<span class="separator">/</span><span class="current-section"><?= $produk->produk_nama ?></span></p>
	</div>
</div>
<!-- /SECTION HEADLINE -->
<!-- SECTION -->
<div class="section-wrap">
	<div class="section">
		<!-- SIDEBAR -->
		<div class="sidebar right">
			<!-- SIDEBAR ITEM -->
			<div class="sidebar-item void buttons">



				<?php if ($this->session->userdata('login_pelanggan') != 'login') : ?>
					<a href="#" onclick="alert('Silahkan Login Untuk Memesan !')" class="button big dark purchase">
						<span class="currency"><?= number_format($produk->produk_harga, 0, '', '.') ?></span>
						<span class="primary">Pesan !</span>
					</a>
					<a href="<?= base_url('login') ?>" class="button big primary ">
						<!-- <span class="icon-present"></span> -->
						Masuk / Login
					</a>
					<a href="<?= base_url('register') ?>" class="button big secondary ">
						<!-- <span class="icon-heart"></span> -->
						Daftar / Register
					</a>

				<?php else : ?>
					<a href="#" class="button big dark purchase" id="tmbl-pesan">
						<span class="currency"><?= number_format($produk->produk_harga, 0, '', '.') ?></span>
						<span class="primary">Pesan !</span>
					</a>
				<?php endif ?>
			</div>
			<!-- /SIDEBAR ITEM -->

			<!-- SIDEBAR ITEM -->
			<div class="sidebar-item product-info" id="form-pesanan" style="display: none">
				<h4>Detail Pesanan :</h4>
				<hr class="line-separator">
				<!-- INFORMATION LAYOUT -->
				<div class="information-layout v2">
					<!-- INFORMATION LAYOUT ITEM -->
					<form method="post" action="<?= base_url('keranjang/tambah/') . $produk->produkid ?>" enctype="multipart/form-data">
						<div class="information-layout-item">
							<p class="text-header">Harga : </p>
							<input min="0" type="number" name="harga" id="harga" value="<?= $produk->produk_harga; ?>" required readonly>
						</div>
						<!-- Option Jenis Bahan -->
						<div class="information-layout-item">
							<p class="text-header">Jenis Bahan :</p>
							<select class="form-control" id="bahan" name="bahan">
								<option>Jenis Bahan</option>

								<?php foreach (array_combine($jenis_bahan, $harga_bahan) as $bahan => $harga) { ?>
									<!-- echo '<option value="' . $code . '">' . $name . '</option>'; -->
									<option value="<?= $harga; ?>"><?= $bahan ?></option>
								<?php } ?>
							</select>
						</div>
						<!-- /Option Jenis Bahan -->
						<div class="form-row information-layout-item">
							<div class="form-group col-md-6">
								<p class="text-header">Jumlah / Qty :</p>
								<input min="<?= $produk->min_order ?>" type="number" name="qty" id="qty" value="100" required>
								<input type="hidden" id="harga" value="<?= $produk->min_order ?>">
							</div>
							<div class="form-group col-md-6">
								<p class="text-header">Satuan :</p>
								<input type="text" name="satuan" id="satuan" value="<?= $produk->satuan_qty ?>" required readonly>
								<input type="hidden" id="harga" value="<?= $produk->satuan_qty ?>">
							</div>
						</div>
						<div class="information-layout-item">
							<p class="text-header">Lokasi :</p>
							<select id="destination_provice" name="destination_provice" class="form-control" id="exampleFormControlSelect1">
								<option>Pilih Provinsi Tujuan</option>
								<?php foreach ($province->rajaongkir->results as $prov) { ?>
									<option value="<?php echo $prov->province_id ?>"><?php echo $prov->province ?></option>
								<?php } ?>
							</select>
						</div>

						<div class="information-layout-item">
							<p class="text-header">Kota :</p>
							<select id="destination_city" name="destination_city" class="form-control" id="exampleFormControlSelect1">

							</select>
						</div>

						<div class="information-layout-item">
							<p class="text-header">Berat : </p>
							<input min="0" type="number" name="weight" id="weight" value="" required readonly>
						</div>
						<div class="information-layout-item">
							<p class="text-header">Opsi Pengiriman :</p>
							<select class="form-control" id="opKirim" name="opKirim">
								<option>Opsi Pengiriman</option>
								<option value="jne">JNE</option>
								<option value="pos">POS</option>
								<option value="tiki">TIKI</option>
							</select>
						</div>

						<div class="information-layout-item">
							<p class="text-header">Opsi Layanan : </p>
							<select id="ongkos" name="ongkos" class="form-control">

							</select>
						</div>
						<div class="information-layout-item">
							<p class="text-header">Desain / Gambar :</p>
							<input type="file" name="image" required>
						</div>
						<!-- /INFORMATION LAYOUT ITEM -->

						<!-- INFORMATION LAYOUT ITEM -->
						<div class="information-layout-item">
							<p class="text-header">Deskripsi / Pesan :</p>
							<textarea name="isi_pesan" required></textarea>
						</div>
						<!-- /INFORMATION LAYOUT ITEM -->

						<!-- INFORMATION LAYOUT ITEM -->
						<div class="information-layout-item">
							<p class="text-header">Sub Total :</p>
							<h3>Rp. <span id="subtotal"></span></h3>
						</div>

						<button class="button primary">Pesan</button>
						<!-- /INFORMATION LAYOUT ITEM -->
					</form>




				</div>
				<!-- INFORMATION LAYOUT -->
			</div>
			<!-- /SIDEBAR ITEM -->



			<!-- SIDEBAR ITEM -->
			<div class="sidebar-item product-info">
				<h4>Informasi Produk</h4>
				<hr class="line-separator">
				<!-- INFORMATION LAYOUT -->
				<div class="information-layout v2">
					<!-- INFORMATION LAYOUT ITEM -->
					<div class="information-layout-item">
						<p class="text-header">Nama Produk:</p>
						<p><?= $produk->produk_nama ?></p>
					</div>
					<!-- /INFORMATION LAYOUT ITEM -->

					<!-- INFORMATION LAYOUT ITEM -->
					<div class="information-layout-item">
						<p class="text-header">Kategori :</p>
						<p><?= $produk->kategori_nama ?></p>
					</div>
					<!-- /INFORMATION LAYOUT ITEM -->

					<!-- INFORMATION LAYOUT ITEM -->
					<div class="information-layout-item">
						<p class="text-header">Harga :</p>
						<p>Rp.<?= number_format($produk->produk_harga, 0, '', '.') ?></p>
					</div>
					<!-- /INFORMATION LAYOUT ITEM -->




				</div>
				<!-- INFORMATION LAYOUT -->
			</div>
			<!-- /SIDEBAR ITEM -->
		</div>
		<!-- /SIDEBAR -->

		<!-- CONTENT -->
		<div class="content left">


			<!-- Modal -->
			<div id="myModal" class="modal fade" role="dialog" style="margin-top: 100px !important;">
				<input type="hidden" id="kategori" value="<?= $produk->kategori_id ?>">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-body">
							<div class="row">
								<div class="col-6">
									<div class="card" style="width: 18rem;margin-left:75px">
										<div class="card-body">
											<img class="card-img-top" src="<?= base_url(); ?>assets/img/produk/custom.jpg" alt="Card image cap">
											<h5 class="card-title">Cetak Digital</h5>
											<h5 class="card-subtitle mb-2 text-muted">Cetak Digital</h5>
											<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content123.</p>
											<a href="<?= base_url('produk/cetakDigital/') . $produk->produkid ?>" class="card-link btn btn-primary" style="margin-left: 90px;">Click</a>
										</div>
									</div>
								</div>
								<div class="col-6">
									<div class="card" style="width: 18rem;">
										<div class="card-body">
											<img class="card-img-top" src="<?= base_url(); ?>assets/img/produk/custom.jpg" alt="Card image cap">
											<h5 class="card-title">Cetak Offset</h5>
											<h5 class="card-subtitle mb-2 text-muted">Cetak Offset</h5>
											<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
											<a href="<?= base_url('produk/cetakOffset/') . $produk->produkid ?>" class="card-link btn btn-primary" style="margin-left: 90px;">Click</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Modal -->

			<!-- POST -->
			<article class="post">
				<!-- POST IMAGE -->
				<div class="post-image">
					<figure class="product-preview-image large liquid">
						<img style="height: 484px;" src="<?php echo base_url('assets/img/produk/') ?><?= $produk->produk_gambar ?>" alt="">
					</figure>
				</div>
				<!-- /POST IMAGE -->



				<hr class="line-separator">

				<!-- POST CONTENT -->
				<div class="post-content">
					<!-- POST PARAGRAPH -->
					<div class="post-paragraph">
						<h3 class="post-title">Deskripsi:</h3>
						<p><?= $produk->produk_deskripsi ?></p>
					</div>




					<div class="clearfix"></div>
				</div>
				<!-- /POST CONTENT -->

				<hr class="line-separator">


			</article>
			<!-- /POST -->


		</div>
		<!-- CONTENT -->
	</div>
</div>
<!-- /SECTION -->

<!--  -->

<script>
	// menampilkan kota tujuan pengiriman
	$(document).ready(function() {
		$('#destination_provice').change(function() {

			var province_id = $('#destination_provice').val();
			$.get('<?php echo site_url('Produk/get_city_by_province/') ?>' + province_id, function(resp) {
				// console.log(resp);
				$('#destination_city').html(resp);
			});
		});
	});


	$(document).ready(function() {
		$('#opKirim').change(function() {
			var opKirim = $(this).val();
			var province = $('#province').val();
			var city = $('#destination_city').val();
			var weight = $('#weight').val();

			$.get('<?php echo site_url('Produk/get_ongkos/') ?>' + city + '/' + weight + '/' + opKirim, function(resp) {
				console.log(resp);
				$('#ongkos').html(resp);
			});
		});
	});
</script>