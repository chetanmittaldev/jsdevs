class AddRatesToDevs < ActiveRecord::Migration[7.0]
  def change
    add_column :developers, :rate, :decimal, precision: 5, scale: 2, default: 0
    add_column :developers, :rate_a, :integer, default: 0
    add_column :developers, :rate_b, :integer, default: 0
    add_column :developers, :rate_c, :integer, default: 0
    add_column :developers, :rate_d, :integer, default: 0
    add_column :developers, :rate_e, :integer, default: 0
    add_column :developers, :rate_f, :integer, default: 0
    add_column :developers, :rate_g, :integer, default: 0
    add_column :developers, :rate_h, :integer, default: 0
    add_column :developers, :rate_i, :integer, default: 0
    add_column :developers, :rate_j, :integer, default: 0
    add_column :developers, :rate_k, :integer, default: 0
    add_column :developers, :rate_l, :integer, default: 0
    add_column :developers, :rate_m, :integer, default: 0
    add_column :developers, :rate_n, :integer, default: 0
    add_column :developers, :rate_o, :integer, default: 0
    add_column :developers, :rate_p, :integer, default: 0
  end
end
