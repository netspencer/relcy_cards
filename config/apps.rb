Padrino.configure_apps do
  # set :protection, :except => :path_traversal
  # set :protect_from_csrf, true
end

# Mounts the core application for this project
Padrino.mount('RelcyCards::App', :app_file => Padrino.root('app/app.rb')).to('/')
