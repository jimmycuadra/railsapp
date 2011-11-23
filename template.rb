# Remove files that will be replaced or are just unused
cruft = %w[
  .gitignore
  app/assets/images/rails.png
  app/assets/javascripts/application.js
  app/assets/stylesheets/application.css
  app/views/layouts/application.html.erb
  doc
  Gemfile
  public/index.html
  README
  test
]

cruft.each { |path| run "rm -rf #{path}" }

# Copy files into app
base_path = File.expand_path("../files", __FILE__) + "/"

Dir[base_path + "**/*"].each do |path|
  next if File.directory?(path)

  destination_path = path.sub(base_path, "")
  destination_path.sub!(/__/, ".")

  create_file(destination_path, File.read(path))
end

# Create examples for ignored files
run "cp config/database.yml config/database.yml.example"
run "cp .env .env.example"

# Install bundle
run "bundle install"

# Initialize Git
git :init
