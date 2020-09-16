class AddInitialClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.string :name
      t.text :description
      t.datetime :hopped_at

      t.timestamps
    end

    create_table :notes do |t|
      t.integer :relationship_id
      t.text :content
      t.timestamps
    end
  end
end
