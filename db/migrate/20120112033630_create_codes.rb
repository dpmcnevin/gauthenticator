class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :account
      t.string :key

      t.timestamps
    end
  end
end
