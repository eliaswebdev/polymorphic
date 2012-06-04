class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :file
      t.references :documentable, :polymorphic => true

      t.timestamps
    end
    add_index :documents, :documentable_id
  end
end
