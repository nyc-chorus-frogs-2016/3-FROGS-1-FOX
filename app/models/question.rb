class Question < ActiveRecord::Base
  has_many :choices
  belongs_to :survey
  has_many :votes

  def questions_from_same_survey(question_id)
    Question.find_by(id: question_id).survey.questions
  end

  def next_question(question_id)
    current_index = questions_from_same_survey(question_id).index(Question.find_by(id: question_id))
    questions_from_same_survey(question_id)[current_index+1]
    # binding.pry
  end

end
