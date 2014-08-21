class ChangeColumnBankCdDefault < ActiveRecord::Migration
  def change
    change_column_default :bankm, :bank_cd, 0
  end
end
