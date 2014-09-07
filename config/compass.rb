require "bootstrap-sass"

if defined?(Sinatra)
  environment = :development

  project_path = Sinatra::Application.root
else
  environment = :production

  project_path = File.dirname('../')

  relative_assets = true
end

#** Set up directories.
#* @see http://compass-style.org/help/documentation/sass-based-configuration-options/
#**
css_dir = File.join(project_path, "public", "stylesheets")
images_dir = File.join(project_path, "public", "images")
fonts_dir = File.join(project_path, "public", "fonts")
sass_dir = File.join(project_path, "views", "sass")
javascripts_dir = File.join(project_path, "public", "javascripts")
http_path = "/"
http_images_path = "/images"
http_stylesheets_path = "/stylesheets"
http_javascripts_path = "/javascripts"