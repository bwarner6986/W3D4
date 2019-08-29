# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  user_id          :integer          not null
#  question_id      :integer          not null
#  answer_choice_id :integer
#

class Response < ApplicationRecord

  validates:

  belongs_to :respondent,
    primary_key: :id,
    class_name: :User,
    foreign_key: :user_id

  belongs_to :answer_choice,
    primary_key: :id,
    class_name: :AnswerChoice,
    foreign_key: :answer_choice_id


end
