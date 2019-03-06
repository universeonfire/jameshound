class AddBelgeReferenceToCariBelgeTanim < ActiveRecord::Migration[5.2]
  def change
    add_reference :cari_belge_tanims, :belge, foreign_key: true
  end
end
