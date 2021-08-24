class CreateGalleries < ActiveRecord::Migration[6.1]
  def change
    create_table :galleries do |t|
      t.string :image
      t.string :age
      t.timestamps
    end
  end
end
