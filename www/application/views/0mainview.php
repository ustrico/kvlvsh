 
<header>
	{logo}
</header>   
{content1}    
<br>
<div class="chunk" chunkid="test2">{test2}</div>
<div class="chunk" chunkid="test3">{test3}</div>
<br>
{content2} {content2} {content2} 

<br>
<br>

<div class="chunk" chunkid="test1">{test1}</div>

<script>
</script>


<?php 

$i = strval(0.03);
while (strlen(strstr($i, '.')) < 4) $i .= '0';
echo $i;

?>

</body>    
</html>    