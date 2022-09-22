class AddSkillsToDevelopers < ActiveRecord::Migration[7.0]
  def change
    add_column :developers, :skills, :json, default: {}
  end
end
