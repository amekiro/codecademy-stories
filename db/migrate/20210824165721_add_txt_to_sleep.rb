class AddTxtToSleep < ActiveRecord::Migration[6.1]
  def change
    add_column :sleeps, :txt, :string
  end
end
