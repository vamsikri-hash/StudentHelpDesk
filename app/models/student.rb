 class Student < ActiveRecord::Base
   has_secure_password
   has_many :requests, dependent: :destroy
   has_many :senior_requests, dependent: :destroy
 end