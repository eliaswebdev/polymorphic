class CreateBiddings < ActiveRecord::Migration
  def change
    create_table :biddings do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
