# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( application-notheme.css )
Rails.application.config.assets.precompile += %w( home.css )
Rails.application.config.assets.precompile += %w( home.js )
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( jquery_ujs.js )
Rails.application.config.assets.precompile += %w( bootstrap-sprockets.js )
Rails.application.config.assets.precompile += %w( console.css )
Rails.application.config.assets.precompile += %w( auth/login.css )
Rails.application.config.assets.precompile += %w( auth/register.css )
Rails.application.config.assets.precompile += %w( blog/bootstrap/css/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( blog/font-awesome/css/font-awesome.min.css )
Rails.application.config.assets.precompile += %w( blog/clean-blog.css blog/clean-blog.js )
Rails.application.config.assets.precompile += %w( blog/jquery/jquery.min.js )
Rails.application.config.assets.precompile += %w( blog/popper/popper.min.js )
Rails.application.config.assets.precompile += %w( blog/bootstrap/js/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( bootstrap.js )
