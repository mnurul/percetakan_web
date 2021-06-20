
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
						


					<?php if ($this->session->userdata('login_pelanggan') != 'login'): ?>
						<a href="#" onclick="alert('Silahkan Login Untuk Memesan !')" class="button big dark purchase">
							<span class="currency"><?= number_format($produk->produk_harga,0,'','.') ?></span>
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
						
					<?php else: ?>
						<a href="#" class="button big dark purchase" id="tmbl-pesan">
							<span class="currency"><?= number_format($produk->produk_harga,0,'','.') ?></span>
							<span class="primary">Pesan !</span>
						</a>
					<?php endif ?>
				</div>
				<!-- /SIDEBAR ITEM -->

				<!-- SIDEBAR ITEM -->
				<div class="sidebar-item product-info" id="form-pesanan" >
					<h4>Detail Pesanan :</h4>
					<hr class="line-separator">
					<!-- INFORMATION LAYOUT -->
					<div class="information-layout v2">
						<!-- INFORMATION LAYOUT ITEM -->
						<form method="post" action="<?= base_url('keranjang/update/').$data_keranjang->id ?>" enctype="multipart/form-data">
							<div class="information-layout-item">
								<p class="text-header">Jumlah / Qty :</p>
								<input min="0" type="number" name="qty" id="qty" value="<?= $data_keranjang->jumlah ?>" required>
								<input type="hidden" id="harga" value="<?= $produk->produk_harga ?>" >
							</div>

							<div class="information-layout-item">
								<p class="text-header">Desain / Gambar :</p>
								<img width="100" src="<?= base_url('assets/img/pesanan/').$data_keranjang->gambar ?>">
								<input type="file" name="image" >
							</div>
							<!-- /INFORMATION LAYOUT ITEM -->

							<!-- INFORMATION LAYOUT ITEM -->
							<div class="information-layout-item">
								<p class="text-header">Deskripsi / Pesan :</p>
								<textarea name="isi_pesan" required><?= $data_keranjang->isi_pesan ?></textarea>
							</div>
							<!-- /INFORMATION LAYOUT ITEM -->

							<!-- INFORMATION LAYOUT ITEM -->
							<div class="information-layout-item">
								<p class="text-header">Sub Total :</p>
								<h3>Rp. <span id="subtotal"><?= number_format($data_keranjang->sub_total,0,',',',') ?></span></h3>
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
							<p>Rp.<?= number_format($produk->produk_harga,0,'','.') ?></p>
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