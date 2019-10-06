class SeniorRequest < ActiveRecord::Base
  belongs_to :senior
  belongs_to :student
 end