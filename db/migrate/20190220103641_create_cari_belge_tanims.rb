class CreateCariBelgeTanims < ActiveRecord::Migration[5.2]
  def change
    create_table :cari_belge_tanims do |t|
      t.bigint :bel_id
      t.references :cari, foreign_key: true

      t.timestamps
    end
  end
end
