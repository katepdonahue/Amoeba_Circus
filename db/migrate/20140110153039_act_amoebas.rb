class ActAmoebas < ActiveRecord::Migration
  def change
    create_table :act_amoebas do |t|
      t.integer :act_id
      t.integer :amoeba_id

      t.timestamps
    end
  end
end
