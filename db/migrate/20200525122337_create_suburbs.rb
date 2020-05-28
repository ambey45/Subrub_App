class CreateSuburbs < ActiveRecord::Migration[5.2]
  def change
    create_table :suburbs do |t|
      t.string  :address
      t.integer :pincode
      t.numeric :latitude
      t.numeric :longitude

      t.timestamps
    end
  end
end
