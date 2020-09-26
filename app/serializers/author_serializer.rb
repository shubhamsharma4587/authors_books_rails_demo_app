class AuthorSerializer < ActiveModel::Serializer
  attributes :author_id, :first_name, :last_name, :date_of_birth
  has_many :books
end
