class Author < ApplicationRecord
  has_many :authors_books
  has_many :books, through: :authors_books
  
end
