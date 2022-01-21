# == Schema Information
#
# Table name: books
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :bigint
#  genre_id   :bigint
#
# Indexes
#
#  index_books_on_author_id  (author_id)
#  index_books_on_genre_id   (genre_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#  fk_rails_...  (genre_id => genres.id)
#
class Book < ApplicationRecord
  validates :title, :author_id, :genre_id, presence: true

  belongs_to :author
  has_many :genres_books
  has_many :genres, through: :genres_books
end
