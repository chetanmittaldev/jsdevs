class AddRatesToDevs < ActiveRecord::Migration[7.0]
  def change
    add_column :developers, :rate, :decimal, precision: 5, scale: 2
    add_column :developers, :rate_a, :integer
    add_column :developers, :rate_b, :integer
    add_column :developers, :rate_c, :integer
    add_column :developers, :rate_d, :integer
    add_column :developers, :rate_e, :integer
    add_column :developers, :rate_f, :integer
    add_column :developers, :rate_g, :integer
    add_column :developers, :rate_h, :integer
    add_column :developers, :rate_i, :integer
    add_column :developers, :rate_j, :integer
    add_column :developers, :rate_k, :integer
    add_column :developers, :rate_l, :integer
    add_column :developers, :rate_m, :integer
    add_column :developers, :rate_n, :integer
    add_column :developers, :rate_o, :integer
    add_column :developers, :rate_p, :integer
  end
end
