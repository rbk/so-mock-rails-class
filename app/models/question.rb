class Question < ActiveRecord::Base
	has_many :answers
	belongs_to :subject
	validates :question, { presence: :true, uniqueness: :true }
end
