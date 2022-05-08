# == Schema Information
#
# Table name: books
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Book < ApplicationRecord
  has_one_attached :avatar
  
  validates :title, presence: true

  has_many :authors_books
  has_many :authors, through: :authors_books

  has_one :genres_book
  has_one :genre, through: :genres_book
end
