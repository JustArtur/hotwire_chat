class AddProfileModel < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string   :first_name, null: false
      t.string   :second_name, null: false
      t.datetime   :birthday, null: false
      t.references :user, null: false, foreign_key: true
    end  
  end
end
