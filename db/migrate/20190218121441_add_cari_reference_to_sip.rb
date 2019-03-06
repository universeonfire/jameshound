class AddCariReferenceToSip < ActiveRecord::Migration[5.2]
  def change
    add_reference :sips, :cari, foreign_key: true
  end
end
