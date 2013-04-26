class Client < ActiveRecord::Base
  attr_accessible :company_name, :email, :is_active, :password,:password_confirmation,:admin,:subdomain
  validates_presence_of :company_name,:email,:password,:admin,:subdomain
  validates_confirmation_of :password
  validates_uniqueness_of :subdomain,:admin
end
