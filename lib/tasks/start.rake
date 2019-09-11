namespace :start do
  task :development do
    exec 'heroku local -f Procfile.dev'
  end
end

desc 'Start Server for Development'
task :start => 'start:development'
