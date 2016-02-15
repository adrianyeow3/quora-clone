class Answer < ActiveRecord::Base
  belongs_to :user, :question
  validates :text, :presence => true
end