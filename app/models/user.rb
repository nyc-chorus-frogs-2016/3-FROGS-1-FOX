class User < ActiveRecord::Base
  has_many :surveys, class_name: 'Survey', foreign_key: 'creator_id'
  # , class_name: 'Survey', foreign_key: creator_id
end
