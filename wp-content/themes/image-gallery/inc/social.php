<?php if( ! defined( 'ABSPATH' ) ) exit;

	function image_gallery_social_section () { ?>

		<div class="social">
		
			<div class="fa-icons">
			
				<?php if (get_theme_mod( 'image_gallery_facebook' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' )) == "_blank"){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_facebook' )); ?>"><i class="fa fa-facebook-f"></i></a>
				<?php endif; ?>
							
				<?php if (get_theme_mod( 'image_gallery_twitter' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_twitter' )) ?>"><i class="fa fa-twitter"></i></a>
				<?php endif; ?>
											
				<?php if (get_theme_mod( 'image_gallery_google' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_google' )); ?>"><i class="fa fa-google-plus"></i></a>
				<?php endif; ?>
															
				<?php if (get_theme_mod( 'image_gallery_youtube' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_youtube' )); ?>"><i class="fa fa-youtube"></i></a>
				<?php endif; ?>
																			
				<?php if (get_theme_mod( 'image_gallery_vimeo' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_vimeo' )); ?>"><i class="fa fa-vimeo"></i></a>
				<?php endif; ?>
																			
				<?php if (get_theme_mod( 'image_gallery_pinterest' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_pinterest' )); ?>"><i class="fa fa-pinterest"></i></a>
				<?php endif; ?>	
				
				<?php if (get_theme_mod( 'image_gallery_instagram' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_instagram' )); ?>"><i class="fa fa-instagram" aria-hidden="true"></i></a>
				<?php endif; ?>
																			
				<?php if (get_theme_mod( 'image_gallery_linkedin' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_linkedin' )); ?>"><i class="fa fa-linkedin"></i></a>
				<?php endif; ?>
																			
				<?php if (get_theme_mod( 'image_gallery_rss' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_rss' )); ?>"><i class="fa fa-rss"></i></a>
				<?php endif; ?>
																			
				<?php if (get_theme_mod( 'image_gallery_stumbleupon' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_stumbleupon' )); ?>"><i class="fa fa-stumbleupon"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_kirki_social_10' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_kirki_social_10' )); ?>"><i class="fa fa-flickr" aria-hidden="true"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_dribbble' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_dribbble' )); ?>"><i class="fa fa-dribbble"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_digg' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_digg' )); ?>"><i class="fa fa-digg"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_skype' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_skype' )); ?>"><i class="fa fa-skype"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_deviantart' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_deviantart' )); ?>"><i class="fa fa-deviantart"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_yahoo' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_yahoo' )); ?>"><i class="fa fa-yahoo"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_reddit_alien' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_reddit_alien' )); ?>"><i class="fa fa-reddit-alien"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_paypal' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_paypal' )); ?>"><i class="fa fa-paypal"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_dropbox' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_dropbox' )); ?>"><i class="fa fa-dropbox"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_soundcloud' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_soundcloud' )); ?>"><i class="fa fa-soundcloud"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_vk' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_vk' )); ?>"><i class="fa fa-vk"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_envelope' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_envelope' )); ?>"><i class="fa fa-envelope"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_address_book' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_address_book' )); ?>"><i class="fa fa-address-book" aria-hidden="true"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_address_apple' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_address_apple' )); ?>"><i class="fa fa-apple"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_address_amazon' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_address_amazon' )); ?>"><i class="fa fa-amazon"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_address_slack' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_address_slack' )); ?>"><i class="fa fa-slack"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_address_slideshare' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_address_slideshare' )); ?>"><i class="fa fa-slideshare"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_address_wikipedia' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_address_wikipedia' )); ?>"><i class="fa fa-wikipedia-w"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_address_wordpress' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_address_wordpress' )); ?>"><i class="fa fa-wordpress"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'image_gallery_address_odnoklassniki' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_address_odnoklassniki' )); ?>"><i class="fa fa-odnoklassniki"></i></a>
				<?php endif; ?>
																											
				<?php if (get_theme_mod( 'image_gallery_address_tumblr' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'image_gallery_social_link_type' ))){echo esc_attr(get_theme_mod( 'image_gallery_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'image_gallery_address_tumblr' )); ?>"><i class="fa fa-tumblr"></i></a>
				<?php endif; ?>
				
			</div>
	
		</div>
		
<?php }  ?>