class Author < ApplicationRecord
  has_and_belongs_to_many :books
  before_create :generate_author_id
  self.primary_key = :author_id

  validates :first_name, :last_name, :date_of_birth, presence: true

  def generate_author_id
    loop do
      random_id = rand(1e5...1e6).to_i
      break self.author_id = random_id unless Author.exists?(author_id: random_id)
    end
  end

end
