class CreateSleeps < ActiveRecord::Migration[6.1]
  def change
    create_table :sleeps do |t|
      t.integer :count
      t.string :input
      t.string :txt
      t.timestamps
    end
  end
end
