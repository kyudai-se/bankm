class CangeColumnBankCd < ActiveRecord::Migration
  def change
    remove_column :bankm, :bank_cd, :numeric
    add_column    :bankm, :bank_cd, :numeric, precision: 4, scale: 0, default: 0,  null: false
  end
end
