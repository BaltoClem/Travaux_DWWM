<?php get_header(); ?>
<body>
<div class="container">
    <div class="row">
	        
	 </div>  <!-- .row -->   
	 
    <div class="row">
	    <div class="col-8">
		    <h1><a href="http://localhost/wordpress522/2019/10/22/maecenas-luctus-justo/" title="Maecenas luctus justo">Maecenas luctus justo</a></h1>	
		    <p>Non dui accumsan, in maximus elit aliquet. Suspendisse a lectus pulvinar diam suscipit sagittis.</p>
        <div>
        </div>
		<hr>
		<h1><a href="http://localhost/wordpress522/2019/10/22/donec-maximus-pellentesque-nisi/" title="Donec maximus pellentesque nisi">Donec maximus pellentesque nisi</a></h1>	
		<p>A sodales erat ornare vel. Nulla sagittis ante magna, ac venenatis nunc aliquam ac. Nulla faucibus enim justo, eu pulvinar nunc sodales sed. In hac habitasse platea dictumst. Sed eget enim nibh. Vivamus et varius massa, non tincidunt ex. Maecenas quis urna vel urna congue. </p>
         <div></div><hr>				    <h1><a href="calhost/wordpress522/2019/10/22/lorem-ipsum/" title="Lorem ipsum">Lorem ipsum</a></h1>	
				    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec ante  libero. Pellentesque vestibulum hendrerit turpis, sit amet tristique  nunc sagittis vitae. Cras eu faucibus ligula, ac porta nibh. Aliquam  erat volutpat. Aenean laoreet nunc turpis, id venenatis dolor rhoncus  vel.</p>
<div></div><hr>				    <h1><a href="http://localhost/wordpress522/2019/08/11/bonjour-tout-le-monde/" title="Bonjour tout le monde !">Bonjour tout le monde !</a></h1>	
				    <p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire&nbsp;!</p>
					<?php
if ( have_posts() ) : // S'il y a des articles 
    while ( have_posts() ) : the_post() // Tant qu'il y a des articles, alors pour chaque article on affiche : 
       ?>
       <h2><a href="<?php the_permalink() ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a></h2>  
       <?php                        
       echo"<div>".the_excerpt()."</div>";
       echo"<hr>";
   endwhile;
endif;
?>
<div></div><hr>	    
</div>
	    <!-- sidebar.php -->
<div class="col-4 border border-dark">
   [ SIDEBAR ]
</div>	 </div>
</div> <!-- .container -->  
<?php get_footer(); ?>