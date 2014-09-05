require "bootstrap-sass"

if defined?(Sinatra)
  environment     = :development

  project_path  = Sinatra::Application.root
else
  environment     = :production

  project_path  = File.dirname(__FILE__)

  relative_assets = true
end

#** Set up directories.
#* @see http://compass-style.org/help/documentation/sass-based-configuration-options/
#**
  css_dir       = File.join("public", "stylesheets")
  images_dir    = File.join("public", "images")
  fonts_dir     = File.join("public", "fonts")
sass_dir                = File.join("views", "sass")
http_path               = "/"
http_images_path        = "/images"
http_stylesheets_path   = "/stylesheets"