# == Schema Information
#
# Table name: questions
#
#  id      :bigint           not null, primary key
#  poll_id :integer          not null
#  text    :string           not null
#

class Question < ApplicationRecord

  validates 

  has_many :answer_choices,
    primary_key: :id,
    class_name: :AnswerChoice,
    foreign_key: :question_id

  belongs_to :poll,
    primary_key: :id,
    class_name: :Poll,
    foreign_key: :poll_id


end
