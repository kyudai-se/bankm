class CangeColumnBankm < ActiveRecord::Migration
  def change
    change_column :bankm, :bank_cd, :numeric, limit: 04, null: false, default: 0
    change_column :bankm, :bank_j,  :string, limit: 40, null: false, default: ''
    change_column :bankm, :bank_a,  :string, limit: 40, null: false, default: ''
    change_column :bankm, :bank_k,  :string, limit: 40, null: false, default: ''
  end
end
