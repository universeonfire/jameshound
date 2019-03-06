class CreateCaris < ActiveRecord::Migration[5.2]
  def change
    create_table :caris do |t|
      t.string :unvan
      t.string :unvan2
      t.text :adres
      t.string :telefon
      t.string :il
      t.string :ilce
      t.string :vergi_dairesi
      t.string :vergi_no
      t.string :varis_tipi

      t.timestamps
    end
  end
end
