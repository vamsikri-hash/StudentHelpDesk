class Senior < ActiveRecord::Base
  has_many :senior_requests, dependent: :destroy
end
