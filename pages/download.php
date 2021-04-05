<?php $title='Download'; require 'support/prelude.php'; ?>
	<h1><?= $title ?></h1>
	<article>
		<!--
		<figure>
			<a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ"><img src="images/drive.png"/></a>
			<figcaption>USB/Disk Live image</figcaption>
		</figure>
		-->
		<h2>Flash an image</h2>
		<code># dd if=heylelos.img "of=<var>$TARGET_DRIVE</var>" "bs=`getconf PAGESIZE`"</code>
	</article>
<?php require 'support/postlude.php'; ?>
