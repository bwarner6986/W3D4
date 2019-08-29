# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  question_id :integer          not null
#  text        :string           not null
#

class AnswerChoice < ApplicationRecord
  validates

  belongs_to :question, 
    primary_key: :id,
    class_name: :Question,
    foreign_key: :question_id

  has_many :responses,
    primary_key: :id,
    class_name: :Response,
    foreign_key: :answer_choice_id


end
