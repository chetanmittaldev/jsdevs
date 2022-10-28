class AddZskillsToDevelopers < ActiveRecord::Migration[7.0]
  def change
    add_column :developers, :zskills, :string, default: ""
  end
end
