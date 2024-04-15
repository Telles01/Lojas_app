class CreateLojas < ActiveRecord::Migration[7.0]
  def change
    create_table :lojas do |t|
      t.string :name
      t.integer :stars

      t.timestamps
    end
  end
end
