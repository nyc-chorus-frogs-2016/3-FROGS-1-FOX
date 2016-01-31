class Survey < ActiveRecord::Base
  has_many :questions

  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  def first_question_id(id)
    Question.where(survey_id:id).minimum(:id)
  end

 def all_questions_complete?
  errors.add(:surveys, "Cannot be incomplete") if
  self.questions.count != self.questions.votes.count
 end
 # Unsure if this validation is necessary since our "submit" button does not allow the user
 # to move on to the next question unless an input is given
end
