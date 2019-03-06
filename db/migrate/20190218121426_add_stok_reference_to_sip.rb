class AddStokReferenceToSip < ActiveRecord::Migration[5.2]
  def change
    add_reference :sips, :stok, foreign_key: true
  end
end
