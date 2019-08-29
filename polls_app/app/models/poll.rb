# == Schema Information
#
# Table name: polls
#
#  id      :bigint           not null, primary key
#  user_id :integer          not null
#  title   :string           not null
#

class Poll < ApplicationRecord

  validates:

  belongs_to :author,
    primary_key: :id,
    class_name: :User,
    foreign_key: :user_id

  has_many :questions,
    primary_key: :id,
    class_name: :Question,
    foreign_key: :poll_id
end
