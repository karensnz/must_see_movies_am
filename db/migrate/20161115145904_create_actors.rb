class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :dob
      t.string :image_url
      t.text :bio

      t.timestamps

    end
  end
end
