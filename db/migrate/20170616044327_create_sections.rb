class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :name

      t.timestamps
    end
    add_index :sections, :name
  end
end
