class AddBelgeTipToBelge < ActiveRecord::Migration[5.2]
  def change
    add_reference :belges, :belge_tip, foreign_key: true
  end
end
