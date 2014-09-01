class CreateBubbles < ActiveRecord::Migration
  def change
    enable_extension :hstore

    create_table :bubbles do |t|
      t.string :title
      t.hstore :tags
      t.string :content

      t.timestamps null: false
    end
  end
end
