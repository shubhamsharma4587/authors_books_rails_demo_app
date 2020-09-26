class BookSerializer < ActiveModel::Serializer
  attributes :id, :book_title
  has_many :authors
end
