class CreateSips < ActiveRecord::Migration[5.2]
  def change
    create_table :sips do |t|
      t.date :siparis_tarihi
      t.date :termin_tarihi
      t.integer :siparis_miktar
      t.integer :sevk_miktar
      t.integer :kalan_miktar

      t.timestamps
    end
  end
end
