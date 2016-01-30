class Survey < ActiveRecord::Base
  has_many :questions

  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
end
