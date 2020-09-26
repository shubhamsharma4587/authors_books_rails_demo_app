class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors, id: false do |t|
      t.primary_key :author_id
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth

      t.timestamps
    end
  end
end
