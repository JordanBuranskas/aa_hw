class CreateToys < ActiveRecord::Migration[7.0]
  def change
    create_table :toys do |t|

      t.string :name, null: false
      t.references :toyable, polymorphic: true, index: true
      t.index [:toyable_type, :toyable_id, :name], unique: true
     


      t.timestamps
    end

    add_index :toys, [:name, :toyable_id, :toyable_type], unique: true
  end
end
