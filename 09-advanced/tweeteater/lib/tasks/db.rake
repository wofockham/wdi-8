namespace :db do
  desc "Drop, create and remigrate the database"
  task :regenerate => :environment do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
  end
end
