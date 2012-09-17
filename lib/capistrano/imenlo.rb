# This is our default stack

require "capistrano"

if Capistrano::Configuration.instance
  Capistrano::Configuration.instance.load_paths << File.dirname(__FILE__)
  Capistrano::Configuration.instance.load "imenlo/default"
  Capistrano::Configuration.instance.load "imenlo/stages"
  require "capistrano/imenlo/extensions"
end
