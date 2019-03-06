class CreateStoks < ActiveRecord::Migration[5.2]
  def change
    create_table :stoks do |t|
      t.string :stok_adi
      t.string :stok_adi2
      t.string :stok_birim
      t.integer :stok_gen
      t.integer :stok_yuk
      t.integer :stok_der

      t.timestamps
    end
  end
end
