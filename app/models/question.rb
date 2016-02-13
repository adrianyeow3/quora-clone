class Question < ActiveRecord::Base
  validates :title, :presence => true
  validates :subject, :presence => true
end