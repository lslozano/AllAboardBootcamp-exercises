class CreateGuestBookEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :guest_book_entries do |t|
      t.integer :guest_book_id
      t.string :person_name
      t.string :body
    end
  end
end
