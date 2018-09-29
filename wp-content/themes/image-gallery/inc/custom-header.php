<?php if( ! defined( 'ABSPATH' ) ) exit;
/**
 * Sample implementation of the Custom Header feature.
 *
 */
function image_gallery_custom_header_setup() {
	add_theme_support( 'custom-header', apply_filters( 'image_gallery_custom_header_args', array(
		'default-image' => get_template_directory_uri() . '/framework/images/header.jpg',	
		'default-text-color'     => 'fff',
		'width'                  => 1300,
		'height'                 => 800,
		'flex-height'            => true,
		'flex-width'            => true,
		'wp-head-callback'       => 'image_gallery_header_style',
	) ) );
}
add_action( 'after_setup_theme', 'image_gallery_custom_header_setup' );

register_default_headers( array(
	'yourimg' => array(
	'url' => get_template_directory_uri() . '/framework/images/header.jpg',
	'thumbnail_url' => get_template_directory_uri() . '/framework/images/header.jpg',
	'description' => _x( 'Default Image', 'header image description', 'image-gallery' )),
));

if ( ! function_exists( 'image_gallery_header_style' ) ) :
/**
 * Styles the header image and text displayed on the blog.
 *
 * @see image_gallery_custom_header_setup().
 */
function image_gallery_header_style() {
	$image_gallery_header_text_color = get_header_textcolor();

	// If we get this far, we have custom styles. Let's do this.
	?>
	<style type="text/css">
		<?php
			// Has the text been hidden?
			if ( ! display_header_text() ) :
		?>
			.site-title,
			.site-description {
				position: absolute;
				clip: rect(1px, 1px, 1px, 1px);
			}
			.site-title,
			.site-description {
				display: none !important;
			}
		<?php
			// If the user has set a custom color for the text use that.
			else :
		?>
			header .site-branding .site-title a, header .header-img .site-title a, header .header-img .site-description,
			header  .site-branding .site-description {
				color: #<?php echo esc_attr( $image_gallery_header_text_color ); ?>;
			}
		<?php endif; ?>
	</style>
	<?php
}
endif;

/**
 * Custom Header Options
 */

add_action( 'customize_register', 'image_gallery_customize_custom_header_meta' );

function image_gallery_customize_custom_header_meta($wp_customize ) {
	
    $wp_customize->add_setting(
        'custom_header_position',
        array(
            'default'    => 'default',
            'capability' => 'edit_theme_options',
			'sanitize_callback' => 'image_gallery_sanitize_select',			
        )
    );

    $wp_customize->add_control(
        'custom_header_position',
        array(
            'settings' => 'custom_header_position',	
			'priority'    => 1,
            'label'    => __( 'Activate Header Image:', 'image-gallery' ),
            'section'  => 'header_image',
            'type'     => 'select',
            'choices'  => array(
                'deactivate' => __( 'Deactivate Header Image', 'image-gallery' ),
                'default' => __( 'Default Image', 'image-gallery' ),
                'all' => __( 'All Pages', 'image-gallery' ),
                'home'  => __( 'Home Page', 'image-gallery' )
            ),
			'default'    => 'deactivate'
        )
    );
	
    $wp_customize->add_setting(
        'custom_header_overlay',
        array(
            'default'    => '',
            'capability' => 'edit_theme_options',
			'sanitize_callback' => 'image_gallery_sanitize_overlay',			
        )
    );

    $wp_customize->add_control(
        'custom_header_overlay',
        array(
            'settings' => 'custom_header_overlay',
			'priority'    => 1,			
            'label'    => __( 'Hide Overlay:', 'image-gallery' ),
            'section'  => 'header_image',
            'type'     => 'select',
            'choices'  => array(
                'on' => __( 'Show Overlay', 'image-gallery' ),
                ''  => __( 'Hide Overlay', 'image-gallery' )
            ),
			'default'    => ''
        )
    );

	$wp_customize->add_setting( 'header_height', array(
		'default' => '',
		'type' => 'theme_mod',
		'capability' => 'edit_theme_options',
		'sanitize_callback' => 'absint',
	) );

	$wp_customize->add_control( 'header_height', array(
		'type' => 'number',
		'priority' => 1,
		'section' => 'header_image',
		'label' => __( 'Custom Height', 'image-gallery' ),
		'description' => __( 'Min-height 200px.', 'image-gallery' ),
		'input_attrs' => array(
			'min' => 200,
			'max' => 1000,
			'step' => 1,
		),
	) );
	
}

function image_gallery_customize_css () { ?>
	<style>
		<?php if(get_theme_mod('header_height')) { ?> .header-img { height: <?php echo esc_attr(get_theme_mod('header_height')); ?>px; } <?php } ?>
	</style>
<?php	
}

add_action('wp_head','image_gallery_customize_css');


function image_gallery_sanitize_select( $input ) {
	$valid = array(
                'deactivate' => __( 'Deactivate Header Image', 'image-gallery' ),
                'default' => __( 'Default Image', 'image-gallery' ),
                'all' => __( 'All Pages', 'image-gallery' ),
                'home'  => __( 'Home Page', 'image-gallery' )
	);

	if ( array_key_exists( $input, $valid ) ) {
		return $input;
	} else {
		return '';
	}
}

function image_gallery_sanitize_overlay( $input ) {
	$valid = array(
        'on' => __( 'Show Overlay', 'image-gallery' ),
        ''  => __( 'Hide Overlay', 'image-gallery' )
	);

	if ( array_key_exists( $input, $valid ) ) {
		return $input;
	} else {
		return '';
	}
}