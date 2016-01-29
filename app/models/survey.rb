class Survey < ActiveRecord::Base
  has_many :questions

  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  def next_question(id)
    @question = Question.find_by(id: question[:id])
    (@question.id) + 1
  end

  def last_question?
    @survey = Survey.find_by(id: params[:id])

    if next_question.id > @survey.questions.count


  end
end
