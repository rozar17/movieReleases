class CreateMreleases < ActiveRecord::Migration[5.0]
  def change
    create_table :mreleases do |t|
      t.string :title
      t.date :release
      t.string :duration


      t.timestamps
    end
  end
end
