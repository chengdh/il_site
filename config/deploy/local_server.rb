# -*- encoding : utf-8 -*-
require 'bundler/capistrano'
require "capistrano-rbenv"

set :rails_env,   "production"
set :unicorn_env, "local_server"
set :app_env,     "production"
#add bundler support
require 'bundler/capistrano'
set :application, "local_il_site"
set :repository,  "."
set :branch, "master"
set :deploy_via, :copy
set :copy_cache, true
#
set :scm, :git
server "127.0.0.1",:app,:web,:db,:primary => true

set :user,"chengdh"
set :use_sudo,false
default_run_options[:pty]=true

set :deploy_to,"~/app/local_il_site"

set :rbenv_ruby_version, "1.9.3-p392"
#set unicorn support
require 'capistrano-unicorn'
set :unicorn_bin,'unicorn'
