class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :status
      t.datetime :lend_time
      t.datetime :return_time
      t.string :lend_to

      t.timestamps
    end
  end
end
