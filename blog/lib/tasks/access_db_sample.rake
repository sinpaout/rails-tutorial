namespace :access_db_sample do
  desc "task_sample_access_db"

  task :task_model => :environment do
    puts Comment.first().to_json
  end
end
