class CreateWebsitesis < ActiveRecord::Migration
  def change
    create_table :websitesis do |t|
      t.string :adresi

      t.timestamps null: false
    end
  end
end
