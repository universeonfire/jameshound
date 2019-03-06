class CreateStokGrups < ActiveRecord::Migration[5.2]
  def change
    create_table :stok_grups do |t|
      t.string :grup_adi

      t.timestamps
    end
  end
end
