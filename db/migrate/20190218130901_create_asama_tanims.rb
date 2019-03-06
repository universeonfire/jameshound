class CreateAsamaTanims < ActiveRecord::Migration[5.2]
  def change
    create_table :asama_tanims do |t|
      t.string :asama_adi

      t.timestamps
    end
  end
end
