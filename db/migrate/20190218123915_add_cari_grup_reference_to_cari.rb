class AddCariGrupReferenceToCari < ActiveRecord::Migration[5.2]
  def change
    add_reference :caris, :cari_grup, foreign_key: true
  end
end
