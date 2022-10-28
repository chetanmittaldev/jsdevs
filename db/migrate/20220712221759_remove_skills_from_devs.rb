class RemoveSkillsFromDevs < ActiveRecord::Migration[7.0]
  def change
    remove_column :developers, :skills
  end
end
