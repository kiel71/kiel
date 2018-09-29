<?php
/**
 * All Purpose Theme Customizer
 *
 * @package All Purpose
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function image_gallery_customize_register( $wp_customize ) {
	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
	

/***********************************************************************************
 * Sanitize Functions
***********************************************************************************/
					
		function image_gallery_sanitize_checkbox( $input ) {
			if ( $input ) {
				return 1;
			}
			return 0;
		}
/***********************************************************************************/
		
		function image_gallery_sanitize_social( $input ) {
			$valid = array(
				'' => esc_attr__( ' ', 'image-gallery' ),
				'_self' => esc_attr__( '_self', 'image-gallery' ),
				'_blank' => esc_attr__( '_blank', 'image-gallery' ),
			);

			if ( array_key_exists( $input, $valid ) ) {
				return $input;
			} else {
				return '';
			}
		}
		
		
/***********************************************************************************
 * Social media option
***********************************************************************************/
 
		$wp_customize->add_section( 'image_gallery_social_section' , array(
			'title'       => __( 'Social Media', 'image-gallery' ),
			'description' => __( 'Social media buttons', 'image-gallery' ),
			'priority'   => 64,
		) );
		
		$wp_customize->add_setting( 'social_media_activate_header', array (
			'sanitize_callback' => 'image_gallery_sanitize_checkbox',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'social_media_activate_header', array(
			'label'    => __( 'Activate Social Icons in Header:', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'social_media_activate_header',
			'type' => 'checkbox',
		) ) );
		
		$wp_customize->add_setting( 'social_media_activate', array (
			'sanitize_callback' => 'image_gallery_sanitize_checkbox',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'social_media_activate', array(
			'label'    => __( 'Activate Social Icons in Footer:', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'social_media_activate',
			'type' => 'checkbox',
		) ) );
		
		$wp_customize->add_setting( 'image_gallery_social_link_type', array (
			'sanitize_callback' => 'image_gallery_sanitize_social',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_social_link_type', array(
			'label'    => __( 'Link Type', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_social_link_type',
			'type'     =>  'select',
            'choices'  => array(
				'' => esc_attr__( ' ', 'image-gallery' ),
				'_self' => esc_attr__( '_self', 'image-gallery' ),
				'_blank' => esc_attr__( '_blank', 'image-gallery' ),
            ),			
		) ) );
		
		$wp_customize->add_setting( 'social_media_color', array (
			'sanitize_callback' => 'sanitize_hex_color',
		) );
				
		$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'social_media_color', array(
			'label'    => __( 'Social Icons Color:', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'social_media_color',
		) ) );
				
		$wp_customize->add_setting( 'social_media_hover_color', array (
			'sanitize_callback' => 'sanitize_hex_color',
		) );
				
		$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'social_media_hover_color', array(
			'label'    => __( 'Social Hover Icons Color:', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'social_media_hover_color',
		) ) );
		
		$wp_customize->add_setting( 'image_gallery_facebook', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_facebook', array(
			'label'    => __( 'Enter Facebook url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_facebook',
		) ) );
	
		$wp_customize->add_setting( 'image_gallery_twitter', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_twitter', array(
			'label'    => __( 'Enter Twitter url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_twitter',
		) ) );

		$wp_customize->add_setting( 'image_gallery_google', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_google', array(
			'label'    => __( 'Enter Google+ url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_google',
		) ) );
		
		$wp_customize->add_setting( 'image_gallery_linkedin', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_linkedin', array(
			'label'    => __( 'Enter Linkedin url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_linkedin',
		) ) );


		$wp_customize->add_setting( 'image_gallery_rss', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_rss', array(
			'label'    => __( 'Enter RSS url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_rss',
		) ) );
		
		$wp_customize->add_setting( 'image_gallery_pinterest', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_pinterest', array(
			'label'    => __( 'Enter Pinterest url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_pinterest',
		) ) );
		
		$wp_customize->add_setting( 'image_gallery_youtube', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_youtube', array(
			'label'    => __( 'Enter Youtube url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_youtube',
		) ) );
					
		$wp_customize->add_setting( 'image_gallery_vimeo', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_vimeo', array(
			'label'    => __( 'Enter Vimeo url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_vimeo',
		) ) );
		
							
		$wp_customize->add_setting( 'image_gallery_instagram', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_instagram', array(
			'label'    => __( 'Enter Ynstagram url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_instagram',
		) ) );
			
		$wp_customize->add_setting( 'image_gallery_stumbleupon', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_stumbleupon', array(
			'label'    => __( 'Enter Stumbleupon url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_stumbleupon',
		) ) );
											
		$wp_customize->add_setting( 'image_gallery_flickr', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_flickr', array(
			'label'    => __( 'Enter Flickr url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_flickr',
		) ) );
		
													
		$wp_customize->add_setting( 'image_gallery_dribbble', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_dribbble', array(
			'label'    => __( 'Enter Dribbble url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_dribbble',
		) ) );
															
		$wp_customize->add_setting( 'image_gallery_digg', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_digg', array(
			'label'    => __( 'Enter Digg url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_digg',
		) ) );
																	
		$wp_customize->add_setting( 'image_gallery_skype', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_skype', array(
			'label'    => __( 'Enter Skype url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_skype',
		) ) );
																			
		$wp_customize->add_setting( 'image_gallery_deviantart', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_deviantart', array(
			'label'    => __( 'Enter Deviantart url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_deviantart',
		) ) );
																					
		$wp_customize->add_setting( 'image_gallery_yahoo', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_yahoo', array(
			'label'    => __( 'Enter Yahoo url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_yahoo',
		) ) );
																							
		$wp_customize->add_setting( 'image_gallery_reddit_alien', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_reddit_alien', array(
			'label'    => __( 'Enter Reddit Alien url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_reddit_alien',
		) ) );
		
																									
		$wp_customize->add_setting( 'image_gallery_paypal', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_paypal', array(
			'label'    => __( 'Enter Paypal url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_paypal',
		) ) );
																											
		$wp_customize->add_setting( 'image_gallery_dropbox', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_dropbox', array(
			'label'    => __( 'Enter Dropbox url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_dropbox',
		) ) );
																													
		$wp_customize->add_setting( 'image_gallery_soundcloud', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_soundcloud', array(
			'label'    => __( 'Enter Soundcloud url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_soundcloud',
		) ) );
		
																															
		$wp_customize->add_setting( 'image_gallery_vk', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_vk', array(
			'label'    => __( 'Enter VK url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_vk',
		) ) );
																																	
		$wp_customize->add_setting( 'image_gallery_envelope', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_envelope', array(
			'label'    => __( 'Enter Envelope url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_envelope',
		) ) );
																																			
		$wp_customize->add_setting( 'image_gallery_address_book', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_address_book', array(
			'label'    => __( 'Enter Address Book url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_address_book',
		) ) );
																																					
		$wp_customize->add_setting( 'image_gallery_address_apple', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_address_apple', array(
			'label'    => __( 'Enter Apple url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_address_apple',
		) ) );
																																							
		$wp_customize->add_setting( 'image_gallery_address_apple', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_address_amazon', array(
			'label'    => __( 'Enter Amazon url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_address_amazon',
		) ) );
																																									
		$wp_customize->add_setting( 'image_gallery_address_slack', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_address_slack', array(
			'label'    => __( 'Enter Slack url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_address_slack',
		) ) );
																																											
		$wp_customize->add_setting( 'image_gallery_address_slideshare', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_address_slideshare', array(
			'label'    => __( 'Enter Slideshare url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_address_slideshare',
		) ) );
																																													
		$wp_customize->add_setting( 'image_gallery_address_wikipedia', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_address_wikipedia', array(
			'label'    => __( 'Enter Wikipedia url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_address_wikipedia',
		) ) );
																																															
		$wp_customize->add_setting( 'image_gallery_address_wordpress', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_address_wordpress', array(
			'label'    => __( 'Enter WordPress url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_address_wordpress',
		) ) );
																																																	
		$wp_customize->add_setting( 'image_gallery_address_odnoklassniki', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_address_odnoklassniki', array(
			'label'    => __( 'Enter Odnoklassniki url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_address_odnoklassniki',
		) ) );
																																																			
		$wp_customize->add_setting( 'image_gallery_address_tumblr', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_address_tumblr', array(
			'label'    => __( 'Enter Tumblr url', 'image-gallery' ),
			'section'  => 'image_gallery_social_section',
			'settings' => 'image_gallery_address_tumblr',
		) ) );
			
	
		
/***********************************************************************************
 * Sidebar Options
***********************************************************************************/
 
		$wp_customize->add_section( 'image_gallery_sidebar' , array(
			'title'       => __( 'Sidebar Options', 'image-gallery' ),
			'priority'   => 64,
		) );
		
		$wp_customize->add_setting( 'image_gallery_sidebar_width', array (
			'sanitize_callback' => 'sanitize_text_field',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_sidebar_width', array(
			'label'    => __( 'Sidebar Width:', 'image-gallery' ),
			'section'  => 'image_gallery_sidebar',		
			'settings' => 'image_gallery_sidebar_width',
			'type'     =>  'range',		
			'input_attrs'     => array(
				'min'  => 10,
				'max'  => 50,
				'step' => 1,
	),			
		) ) );
		
		$wp_customize->add_setting( 'image_gallery_sidebar_position', array (
			'sanitize_callback' => 'sanitize_text_field',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'image_gallery_sidebar_position', array(
			'label'    => __( 'Sidebar Position', 'image-gallery' ),
			'section'  => 'image_gallery_sidebar',
			'settings' => 'image_gallery_sidebar_position',
			'type' => 'radio',
			'choices' => array(
				'1' => __( 'Left', 'image-gallery' ),
				'2' => __( 'Right', 'image-gallery' ),
				'3' => __( 'No Sidebar', 'image-gallery' ),
				),			
			
		) ) );
		
/********************************************
* Sidebar Title Background
*********************************************/ 
	
		$wp_customize->add_setting('image_gallery_aside_background_color', array(         
		'default'     => '',
		'sanitize_callback' => 'sanitize_hex_color'
		)); 	

		$wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'image_gallery_aside_background_color', array(
		'label' => __('Sidebar Title Background Color', 'image-gallery'),        
		'section' => 'image_gallery_sidebar',
		'settings' => 'image_gallery_aside_background_color'
		)));
		
/********************************************
* Sidebar Title Color
*********************************************/ 
	
		$wp_customize->add_setting('image_gallery_aside_title_color', array(         
		'default'     => '',
		'sanitize_callback' => 'sanitize_hex_color'
		)); 	

		$wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'image_gallery_aside_title_color', array(
		'label' => __('Sidebar Title Color', 'image-gallery'),        
		'section' => 'image_gallery_sidebar',
		'settings' => 'image_gallery_aside_title_color'
		)));

/********************************************
* Sidebar Background
*********************************************/ 
	
		$wp_customize->add_setting('image_gallery_aside_background_color1', array(         
		'default'     => '',
		'sanitize_callback' => 'sanitize_hex_color'
		)); 	

		$wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'image_gallery_aside_background_color1', array(
		'label' => __('Sidebar Background Color', 'image-gallery'),        
		'section' => 'image_gallery_sidebar',
		'settings' => 'image_gallery_aside_background_color1'
		)));
		
/********************************************
* Sidebar Link Color
*********************************************/ 
	
		$wp_customize->add_setting('image_gallery_aside_link_color', array(         
		'default'     => '',
		'sanitize_callback' => 'sanitize_hex_color'
		)); 	

		$wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'image_gallery_aside_link_color', array(
		'label' => __('Sidebar Link Color', 'image-gallery'),        
		'section' => 'image_gallery_sidebar',
		'settings' => 'image_gallery_aside_link_color'
		)));
						
/********************************************
* Sidebar Link Hover Color
*********************************************/ 
	
		$wp_customize->add_setting('image_gallery_aside_link_hover_color', array(         
		'default'     => '',
		'sanitize_callback' => 'sanitize_hex_color'
		)); 	

		$wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'image_gallery_aside_link_hover_color', array(
		'label' => __('Sidebar Link Hover Color', 'image-gallery'),        
		'section' => 'image_gallery_sidebar',
		'settings' => 'image_gallery_aside_link_hover_color'
		)));
			
	
}
add_action( 'customize_register', 'image_gallery_customize_register' );

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function image_gallery_customize_preview_js() {
	wp_enqueue_script( 'image_gallery_customizer', get_template_directory_uri() . '/framework/js/customizer.js', array( 'customize-preview' ), '20151215', true );
}
add_action( 'customize_preview_init', 'image_gallery_customize_preview_js' );


		function image_gallery_customize_all_css() {
    ?>
		<style type="text/css">
			<?php if ( (!is_front_page() or !is_home()) and get_theme_mod('custom_header_position') == "home") { ?> .site-header { display: none;} <?php } ?> 
			<?php if ( get_theme_mod('custom_header_position') == "deactivate") { ?> .site-header { display: none;} <?php } ?> 
			<?php if(get_theme_mod('image_gallery_aside_background_color')) { ?>#content aside h2 {background:<?php echo esc_attr (get_theme_mod('image_gallery_aside_background_color')); ?>;} <?php } ?> 
			<?php if(get_theme_mod('image_gallery_aside_background_color1')) { ?>#content aside ul, #content .widget {background:<?php echo esc_attr (get_theme_mod('image_gallery_aside_background_color1')); ?>;} <?php } ?> 
			<?php if(get_theme_mod('image_gallery_aside_title_color')) { ?>#content aside h2 {color:<?php echo esc_attr (get_theme_mod('image_gallery_aside_title_color')); ?>;} <?php } ?> 
			<?php if(get_theme_mod('image_gallery_aside_link_color')) { ?>#content aside a {color:<?php echo esc_attr (get_theme_mod('image_gallery_aside_link_color')); ?>;} <?php } ?> 
			<?php if(get_theme_mod('image_gallery_aside_link_hover_color')) { ?>#content aside a:hover {color:<?php echo esc_attr (get_theme_mod('image_gallery_aside_link_hover_color')); ?>;} <?php } ?> 
			
			<?php if(get_theme_mod('social_media_color')) { ?> .social .fa-icons i {color:<?php echo esc_attr (get_theme_mod('social_media_color')); ?> !important;} <?php } ?> 
			<?php if(get_theme_mod('social_media_hover_color')) { ?> .social .fa-icons i:hover {color:<?php echo esc_attr (get_theme_mod('social_media_hover_color')); ?> !important;} <?php } ?>

			<?php if(get_theme_mod('image_gallery_titles_setting_1')) { ?> .single-title, .sr-no-sidebar .entry-title, .full-p .entry-title { display: none !important;} <?php } ?>

		</style>
		
    <?php	
}
		add_action('wp_head', 'image_gallery_customize_all_css');
		
/**************************************
Sidebar Options
**************************************/


	function image_gallery_sidebar_width () {
		if(get_theme_mod('image_gallery_sidebar_width')) {
	
	$image_gallery_content_width = 96;
	$image_gallery_sidebar_width = esc_attr(get_theme_mod('image_gallery_sidebar_width'));
	$image_gallery_sidebar_sum = $image_gallery_content_width - $image_gallery_sidebar_width;

	?>
		<style>
			#content aside {width: <?php echo esc_attr(get_theme_mod('image_gallery_sidebar_width')); ?>% !important;}
			#content main {width: <?php echo esc_attr($image_gallery_sidebar_sum); ?>%  !important;}
		</style>
		
	<?php }
}
	add_action('wp_head','image_gallery_sidebar_width');
	

	
/*********************************************************************************************************
* Sidebar Position
**********************************************************************************************************/

	function image_gallery_sidebar(){
	$option_sidebar = get_theme_mod( 'image_gallery_sidebar_position');		
	if($option_sidebar == '2') { 
			wp_enqueue_style( 'seos-right-sidebar', get_template_directory_uri() . '/css/right-sidebar.css');
		}

	$option_sidebar = get_theme_mod( 'image_gallery_sidebar_position');			
		if($option_sidebar == '3') { 
			wp_enqueue_style( 'seos-no-sidebar', get_template_directory_uri() . '/css/no-sidebar.css');
		}
	}
	add_action( 'wp_enqueue_scripts', 'image_gallery_sidebar' );
	
	
	
/***********************************************************************************
 * Buy
***********************************************************************************/

		function image_gallery_support($wp_customize){
			class seos_Customize extends WP_Customize_Control {
				public function render_content() { ?>
				<div class="seos-info"> 
						<a href="<?php echo esc_url( 'https://seosthemes.com/image-gallery/' ); ?>" title="<?php esc_attr_e( 'Image Gallery Pro', 'image-gallery' ); ?>" target="_blank">
						<?php _e( 'Pro Feature', 'image-gallery' ); ?>
						</a>
						<br /><br /><a href="<?php echo esc_url( 'https://seosthemes.info/image-gallery-wordpress-theme/' ); ?>" title="<?php esc_attr_e( 'Check demo here.', 'image-gallery' ); ?>" target="_blank">
						<?php _e( 'Check demo here.', 'image-gallery' ); ?>
						</a>								
				</div>
				<?php
				}
			}
		}
		add_action('customize_register', 'image_gallery_support');

		function image_gallery_image_gallery_customize_styles_seos( $input ) { ?>
			<style type="text/css">
				#customize-theme-controls #accordion-panel-image_gallery_buy_panel .accordion-section-title,
				#customize-theme-controls #accordion-panel-image_gallery_buy_panel > .accordion-section-title {
					background: #562B0C;
					color: #FFFFFF;
					box-shadow: inset 0 0 0 #333333, inset 0 13px 28px #333333, inset 0 0 0 #333333;					
				}

				#customize-theme-controls #accordion-panel-image_gallery_buy_panel .accordion-section-title:hover {
					color: #eee;
					box-shadow: inset 0 0 0 #333333, inset 13-13px 18px #333333, inset 0 0 0 #333333;					
				}
				
				.seos-info button a {
					color: #FFFFFF;
				}

				#customize-theme-controls   #accordion-section-image_gallery_buy_section .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section1 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section2 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section3 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section4 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section5 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section6 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section7 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section8 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section9 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section10 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section11 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section12 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section13 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section14 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section15 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section16 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section17 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section18 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section19 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section20 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section21 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section22 .accordion-section-title:after,
				#customize-theme-controls   #accordion-section-image_gallery_buy_section23 .accordion-section-title:after {
					font-size: 13px;
					font-weight: bold;
					content: "Premium";
					float: right;
					right: 40px;
					position: relative;
					color: #FF0000;
				}			
				
				#_customize-input-seos_setting0 {
					display: none;
				}
				
			</style>
		<?php }
		
		add_action( 'customize_controls_print_styles', 'image_gallery_image_gallery_customize_styles_seos');

		if ( ! function_exists( 'image_gallery_buy' ) ) :
			function image_gallery_buy( $wp_customize ) {
			$wp_customize->add_panel( 'image_gallery_buy_panel', array(
				'title'			=> __('Image Gallery Pro', 'image-gallery'),
 
				'priority'		=> 200,
			));
			
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section0', array(
				'title'			=> __('Preview The Theme', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
				'description'	=> __('	<a href="https://seosthemes.info/image-gallery-wordpress-theme/" target="_blank">Preview Image Gallery Pro.</a> ','image-gallery'),
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting0', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new WP_Customize_Control(
					$wp_customize,'seos_setting0', array(
						'section'	=> 'image_gallery_buy_section0',
						'settings'	=> 'seos_setting0',
					)
				)
			);

/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section23', array(
				'title'			=> __('Image Slider', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting23', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting23', array(
						'label'		=> __('Image Slider', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section23',
						'settings'	=> 'seos_setting23',
					)
				)
			);
			
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section22', array(
				'title'			=> __('Gallery', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting22', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting22', array(
						'label'		=> __('Gallery', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section22',
						'settings'	=> 'seos_setting22',
					)
				)
			);
			
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section', array(
				'title'			=> __('Footer Slider', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting', array(
						'label'		=> __('Menu Slider', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section',
						'settings'	=> 'seos_setting',
					)
				)
			);
			
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section1', array(
				'title'			=> __('Contacts', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting1', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting1', array(
						'label'		=> __('Contacts', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section1',
						'settings'	=> 'seos_setting1',
					)
				)
			);
						
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section2', array(
				'title'			=> __('Animations', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting2', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting2', array(
						'label'		=> __('Animations', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section2',
						'settings'	=> 'seos_setting2',
					)
				)
			);
									
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section3', array(
				'title'			=> __('All Google Fonts', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting3', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting3', array(
						'label'		=> __('All Google Fonts', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section3',
						'settings'	=> 'seos_setting3',
					)
				)
			);
												
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section4', array(
				'title'			=> __('Banners', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting4', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting4', array(
						'label'		=> __('Banners', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section4',
						'settings'	=> 'seos_setting4',
					)
				)
			);
															
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section5', array(
				'title'			=> __('Shortcode Scroll Animation', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting5', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting5', array(
						'label'		=> __('Shortcode Scroll Animation', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section5',
						'settings'	=> 'seos_setting5',
					)
				)
			);
																		
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section6', array(
				'title'			=> __('Home Page Custom Images', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting6', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting6', array(
						'label'		=> __('About US Section', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section6',
						'settings'	=> 'seos_setting6',
					)
				)
			);
																					
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section7', array(
				'title'			=> __('Disabel all Comments', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting7', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting7', array(
						'label'		=> __('Disabel all Comments', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section7',
						'settings'	=> 'seos_setting7',
					)
				)
			);
																								
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section8', array(
				'title'			=> __('Entry Meta', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting8', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting8', array(
						'label'		=> __('Entry Meta', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section8',
						'settings'	=> 'seos_setting8',
					)
				)
			);
			
																											
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section9', array(
				'title'			=> __('Hide Options', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting9', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting9', array(
						'label'		=> __('Hide All Titles', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section9',
						'settings'	=> 'seos_setting9',
					)
				)
			);
																														
																																	
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section11', array(
				'title'			=> __('Testimonials Post Type', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting11', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting11', array(
						'label'		=> __('Testimonials Custom Post Type', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section11',
						'settings'	=> 'seos_setting11',
					)
				)
			);
																																				
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section12', array(
				'title'			=> __('WooCommerce Colors', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting12', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting12', array(
						'label'		=> __('WooCommerce Colors', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section12',
						'settings'	=> 'seos_setting12',
					)
				)
			);
			
																																							
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section13', array(
				'title'			=> __('WooCommerce Options', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting13', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting13', array(
						'label'		=> __('WooCommerce Options', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section13',
						'settings'	=> 'seos_setting13',
					)
				)
			);
																																										
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section14', array(
				'title'			=> __('Footer Options', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting14', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting14', array(
						'label'		=> __('Footer Options', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section14',
						'settings'	=> 'seos_setting14',
					)
				)
			);
																																													
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section15', array(
				'title'			=> __('Font Sizes', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting15', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting15', array(
						'label'		=> __('Font Sizes', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section15',
						'settings'	=> 'seos_setting15',
					)
				)
			);
																																																
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section16', array(
				'title'			=> __('Under Construction', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting16', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting16', array(
						'label'		=> __('Under Construction', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section16',
						'settings'	=> 'seos_setting16',
					)
				)
			);
																																																			
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section17', array(
				'title'			=> __('Read More Button Options', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting17', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting17', array(
						'label'		=> __('Read More Button Options', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section17',
						'settings'	=> 'seos_setting17',
					)
				)
			);

																																																												
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section20', array(
				'title'			=> __('Back To Top Button Options', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting20', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting20', array(
						'label'		=> __('Back To Top Button Options', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section20',
						'settings'	=> 'seos_setting20',
					)
				)
			);
		
/******************************************************************************/
		
			$wp_customize->add_section( 'image_gallery_buy_section21', array(
				'title'			=> __('Copy Protection', 'image-gallery'),
				'panel'			=> 'image_gallery_buy_panel',
 
				'priority'		=> 3,
			));			
			
			$wp_customize->add_setting( 'seos_setting21', array(
				'capability'		=> 'edit_theme_options',
				'sanitize_callback'	=> 'wp_filter_nohtml_kses',
			));
			$wp_customize->add_control(
				new seos_Customize(
					$wp_customize,'seos_setting21', array(
						'label'		=> __('Copy Protection', 'image-gallery'),
						'section'	=> 'image_gallery_buy_section21',
						'settings'	=> 'seos_setting21',
					)
				)
			);			
			
		}
		endif;
		 
		add_action('customize_register', 'image_gallery_buy');
		
		
		
