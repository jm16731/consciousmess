class CreateRipples < ActiveRecord::Migration[5.2]
  def change
    create_table :ripples do |t|
      t.string :name
      t.string :url
      t.text :message
      t.datetime :date_posted

      t.timestamps
    end
  end
end
