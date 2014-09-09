def show_404
  status 404
  @page_title = '404'
  erb :'404', :layout => :default,
              :layout_options => {:views => settings.layouts_dir}
end

def show_500
  status 500
  @page_title = '500'
  erb :'500', :layout => :default,
              :layout_options => {:views => settings.layouts_dir}
end

