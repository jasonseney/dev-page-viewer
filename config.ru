require 'rubygems'
require 'bundler'

Bundler.require

require './app'

run Sinatra::Application

require 'sass/plugin/rack'
Sass::Plugin.options.merge!(
  :template_location => './app/css',
  :css_location => './public/css',
  :syntax => :scss
)
use Sass::Plugin::Rack
