  <nav id="nav">
	 <table><tr>
	 <?php 
      foreach($menu as $item):
        $Style = (isset($item['Style'])) ? unserialize($item['Style']) : array(0, 0, '', 60);
        $Style[2] = ($Style[2]) ? $Style[2] : (100 / count($menu) - 1 . '%');
        $Style[3] = ($Style[3]) ? $Style[3] : getimagesize("folder/file.gif");
   ?>
    <td><a href="<?php echo $item['Link']; ?>" >        
        <table><tr>
				<td class="nav-img"><img src="<?php echo $item['Image']; ?>"></td>
				<td>
				<?php if (isset($item['Text']) && $item['Text']){ ?>
          <div class="nav1"><?php echo $item['Text']; ?></div>   
        <?php } if (isset($item['Text2']) && $item['Text2']){ ?>
          <div class="nav2"><?php echo $item['Text2']; ?></div>   
        <?php } if (isset($item['Text3']) && $item['Text3']){ ?>
          <div class="nav3"><?php echo $item['Text3']; ?></div>   
        <?php } if (isset($item['Text4']) && $item['Text4']){ ?>
          <div class="nav4"><?php echo $item['Text4']; ?></div>   
        <?php } 
        ?>
        </td></tr></table>
	   </a></td>
  <?php endforeach; ?>
	 </tr></table>
	</nav>
	
