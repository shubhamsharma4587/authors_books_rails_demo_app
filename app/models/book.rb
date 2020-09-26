class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  before_create :generate_book_id
  self.primary_key = :book_id

  validates :book_title, :presence => true

  def generate_book_id
    loop do
      random_id =  rand(1e5...1e6).to_i
      break self.book_id = random_id unless Book.exists?(book_id: random_id)
    end
  end

end
