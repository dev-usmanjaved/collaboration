class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :users, array: true, default: []
      t.string :schedule, default: ''
      t.integer :sprints, default: 0

      t.timestamps
    end
  end
end
