class AddStokGrupToStok < ActiveRecord::Migration[5.2]
  def change
    add_reference :stoks, :stok_grup, foreign_key: true
  end
end
