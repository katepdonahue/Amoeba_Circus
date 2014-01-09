class Acts < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.text :name
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
