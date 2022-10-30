class AddStackoverflowToDevs < ActiveRecord::Migration[7.0]
  def change
    add_column :developers, :stackoverflow, :string
    add_column :developers, :quality, :text
    add_column :developers, :compensation, :integer
  end
end
