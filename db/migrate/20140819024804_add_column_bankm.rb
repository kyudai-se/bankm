class AddColumnBankm < ActiveRecord::Migration
  def change
    remove_column :bankm, :entdate, :string
    remove_column :bankm, :edtdate, :string
    remove_column :bankm, :area_cd, :numeric
    remove_column :bankm, :area_j, :string
    remove_column :bankm, :area_a, :string
    remove_column :bankm, :area_k, :string

    add_column    :bankm, :entdate, :timestamp
    add_column    :bankm, :edtdate, :timestamp
    add_column    :bankm, :bank_cd, :numeric
    add_column    :bankm, :bank_j, :string
    add_column    :bankm, :bank_a, :string
    add_column    :bankm, :bank_k, :string
  end
end
