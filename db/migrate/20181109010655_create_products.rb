class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.text :eett
      t.references :project_traffic, foreign_key: true
      t.references :project_types, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end