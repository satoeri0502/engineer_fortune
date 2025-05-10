set -o errexit

export RAILS_MASTER_KEY=${RAILS_MASTER_KEY}

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate