class AddAsamaTanimToBelge < ActiveRecord::Migration[5.2]
  def change
    add_reference :belges, :asama_tanim, foreign_key: true
  end
end
