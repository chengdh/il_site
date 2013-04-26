#coding: utf-8
#添加超级管理员到clients表中
class AddAdminToClient < ActiveRecord::Migration
  def change
    add_column :clients,:admin,:string,:null => false,:limit => 20
  end
end
