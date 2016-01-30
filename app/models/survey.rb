class Survey < ActiveRecord::Base
  has_many :questions

  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  def first_question_id(id)
    Question.where(survey_id:id).minimum(:id)
  end
end
