guard 'process', name: "Application Name", command: "bundle exec foreman start -p 3000", env: { "RACK_ENV" => "development" } do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.+\.rb$})
  watch(%r{^config/initializers/.+\.rb$})
  watch('Gemfile.lock')
end

guard 'spork', rspec_env: { 'RAILS_ENV' => 'test' } do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.+\.rb$})
  watch(%r{^config/initializers/.+\.rb$})
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb')
  watch(%r{^spec/support/.+\.rb$})
end

guard 'rspec', cli: "--color --drb", all_after_pass: false do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch('spec/spec_helper.rb')                        { "spec" }
  watch('spec/factories.rb')                          { "spec" }
  watch(%r{^app/views/(.+)/.*\.(erb|haml)$})          { |m| "spec/requests/#{m[1]}_spec.rb" }
end

guard 'jasmine', server: :none, port: 3000, all_after_pass: false do
  watch(%r{app/assets/javascripts/(.+)\.(js\.coffee|js)}) { |m| "spec/javascripts/#{m[1]}_spec.#{m[2]}" }
  watch(%r{spec/javascripts/(.+)_spec\.(js\.coffee|js)})  { |m| "spec/javascripts/#{m[1]}_spec.#{m[2]}" }
  watch(%r{spec/javascripts/spec\.(js\.coffee|js)})       { "spec/javascripts" }
end
