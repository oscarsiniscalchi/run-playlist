task :code_analysis do
  sh 'bundle exec rubocop app config lib'
  sh 'bundle exec reek app config lib -c .reek'
  sh 'bundle exec rails_best_practices .'
  sh 'bundle exec brakeman'
  sh 'bundle exec rake traceroute RAILS_ENV=test'
end
