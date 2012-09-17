# Set default values

default_run_options[:pty] = true

# Obviously, we are git lovers
depend :remote, :command, "git"
set :scm,             :git
set :scm_username,    :imenlo
set :repository,      "git@github.com:#{scm_username}/#{appname}.git"


set :use_sudo,        false
set :deploy_via,      :remote_cache
set (:application)    { "#{appname}" }
#set (:deploy_to)      { "/var/www/#{user}/#{rails_env}" }

# I don't know why capistrano don't do the cleanup by default,
# but it should be the case.
set :keep_releases,   5
after "deploy:update", "deploy:cleanup"

# It's not a good idea to keep capistrano's default value for this when using
# the assets pipeline of Rails3.
set :public_children, %w(images)

set :bundle_cmd,      "bundle"