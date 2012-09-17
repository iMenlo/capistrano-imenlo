# Encoding: utf-8

# This is an example of `config/deploy.rb` file for a Rails3 project.

# TODO Fill these two variables
set :user,    "please_fill_me"
set :appname, "please_fill_me"

require "capistrano/imenlo"
load "imenlo/info"
# TODO run `cap dev info` and check if variables are OK

# Use the capistrano rules for precompiling assets with the Rails assets
# pipeline on deploys.
load "deploy/assets"

# TODO choose if you want to use thin or unicorn
load "imenlo/passenger"

# TODO uncomment the extensions you want to use
# load "af83/database"
# load "af83/delayed_job"
# load "af83/passenger"

# TODO add here other rules for this project (when needed)

