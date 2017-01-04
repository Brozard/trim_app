class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.string :full_name
      t.string :email
      t.string :project_repo
      t.string :project_url
      t.integer :oop_best_practices
      t.integer :modular_dev
      t.integer :workflow_understanding
      t.integer :testing
      t.integer :database_knowledge
      t.integer :debugging
      t.integer :problem_solving
      t.integer :javascript
      t.integer :html
      t.integer :css
      t.integer :teamwork
      t.integer :self_motivation
      t.integer :communication_skils
      t.integer :energy_level
      t.integer :intelligence

      t.timestamps
    end
  end
end
