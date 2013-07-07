</div><!-- #wrapper -->
</div><!-- #page -->

<footer id="footer">
	<nav id="footer-nav">
	<table><tr>
	 <?php 
      $Group = 'StartList';
			foreach($menu as $item){
        if ($Group == 'StartList') {
					echo '<td><ul>';					
				} else if ($Group != $item['Group']) {
					echo '</td><td><ul>';
				}
				$Group = $item['Group'];
				echo '<li' . ($item['NewLine'] ? ' class="footer-nav-li-line"' : '') . '><a href="' . $item['Link'] . '">' . $item['Text'] . '</a></li>';
  		}
			echo '</ul></td>';			 
	?>

	<td id="footer-nav-address">
	 <address id="footer-address">
		<?php echo $addressFooter; ?>	
	 </address>
	 <a href="http://kvl.ru"><img src="/css/footer-logo.png"></a>
	</td>
	</tr></table>
	</nav>
	<div id="footer-copyright">
	 <?php echo $copyright; ?>
	 <div id="footer-top"><span>Наверх</span></div>
	</div>
</footer><!-- #footer -->
</body>
</html>