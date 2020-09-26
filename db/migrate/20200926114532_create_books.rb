class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books, id: false do |t|
      t.primary_key :book_id
      t.string :book_title

      t.timestamps
    end
  end
end
