require "bootstrap-sass"

if defined?(Sinatra)
  environment     = :development

  project_path  = Sinatra::Application.root

  css_dir       = File.join(Sinatra::Application.public_dir, "stylesheets")
  images_dir    = File.join(Sinatra::Application.public_dir, "images")
else
  environment     = :production

  relative_assets = true

  css_dir       = File.join("public", "stylesheets")
  images_dir    = File.join("public", "images")
end

# This is common configuration
sass_dir                = File.join("views", "sass")
http_path               = "/"
http_images_path        = "/images"
http_stylesheets_path   = "/stylesheets"