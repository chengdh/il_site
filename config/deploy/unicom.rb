# -*- encoding : utf-8 -*-
require 'bundler/capistrano'
require "capistrano-rbenv"
set :rails_env,   "production"
set :unicorn_env, "unicom_production"
set :app_env,     "production"

#add bundler support
require 'bundler/capistrano'
set :application, "il_unicom"
set :repository,  "."
set :branch, "master"
set :deploy_via, :copy
set :copy_cache, true
#本地部署时,gzip出现问题,参考
#http://stackoverflow.com/questions/8590341/capistrano-gzip-stdin-unexpected-end-of-file-interruption
local_user = "lmis"
set :copy_dir, "/home/#{local_user}/tmp"
set :remote_copy_dir, "/tmp"
#
set :scm, :git
server "127.0.0.1",:app,:web,:db,:primary => true

set :user,"lmis"
set :use_sudo,false
default_run_options[:pty]=true

set :deploy_to,"~/app/il_site_unicom"

set :rbenv_ruby_version, "1.9.3-p392"
#set unicorn support
require 'capistrano-unicorn'
set :unicorn_bin,'unicorn'
