class CreateBelgeTips < ActiveRecord::Migration[5.2]
  def change
    create_table :belge_tips do |t|
      t.string :baslik

      t.timestamps
    end
  end
end
