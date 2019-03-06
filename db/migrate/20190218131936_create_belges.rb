class CreateBelges < ActiveRecord::Migration[5.2]
  def change
    create_table :belges do |t|
      t.string :baslik

      t.timestamps
    end
  end
end
