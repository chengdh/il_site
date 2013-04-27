# -*- encoding : utf-8 -*-
require 'bundler/capistrano'
require "capistrano-rbenv"

set :rails_env,   "production"
set :unicorn_env, "production"
set :app_env,     "production"

#add bundler support
require 'bundler/capistrano'
set :application, "il_site"
set :repository,  "."
set :branch, "master"
set :deploy_via, :copy
set :copy_cache, true
#
set :scm, :git
server "zz.yanzhaowuliu.com",:app,:web,:db,:primary => true
set :user,"lmis"
set :use_sudo,false
default_run_options[:pty]=true

set :deploy_to,"~/app/il_site"

set :rbenv_ruby_version, "1.9.3-p392"
#set unicorn support
require 'capistrano-unicorn'
set :unicorn_bin,'unicorn'
