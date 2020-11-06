class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :price
      t.boolean :clean
      t.belongs_to :car
      t.belongs_to :user

      t.timestamps
    end
  end
end
