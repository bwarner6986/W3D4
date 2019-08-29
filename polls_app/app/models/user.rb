# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :authored_polls,
    primary_key: :id,
    class_name: :Polls,
    foreign_key: :user_id

  has_many :responses,
    primary_key: :id,
    class_name: :Response,  
    foreign_key: :user_id


end
