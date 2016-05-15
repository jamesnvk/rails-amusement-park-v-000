class CreateAttractions < ActiveRecord::Migration
 def change
  create_table :attractions do |t|
    t.string :name
    t.integer :min_height
    t.integer :nausea_rating
    t.integer :happiness_rating
    t.integer :tickets
  end
 end
end



"is valid with a name, min_height, nausea_rating, happiness_rating, and ticket number"