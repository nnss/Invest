class CreateInvests < ActiveRecord::Migration
  def change
    create_table :invests do |t|
      t.references :user, index: true, foreign_key: true
      t.string :bank
      t.string :name
      t.float :amount

      t.timestamps null: false
    end
  end
end
