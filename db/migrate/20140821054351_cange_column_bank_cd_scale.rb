class CangeColumnBankCdScale < ActiveRecord::Migration
  def change
    change_column :bankm, :bank_cd, :numeric, scale: 0
  end
end
