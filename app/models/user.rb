class User < ActiveRecord::Base
  has_many :surveys, class_name: 'Survey', foreign_key: 'creator_id'
  has_many :votes
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
