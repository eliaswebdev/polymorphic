class CreateConcourses < ActiveRecord::Migration
  def change
    create_table :concourses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
