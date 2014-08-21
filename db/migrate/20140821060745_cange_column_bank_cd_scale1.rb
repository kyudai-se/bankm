class CangeColumnBankCdScale1 < ActiveRecord::Migration
  def change
    change_column :bankm, :bank_cd, :numeric, precision: 4, scale: 0, default: 0,  null: false
  end
end
