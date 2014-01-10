class AmoebaDropColumn < ActiveRecord::Migration
  def up
    remove_column :amoebas, :act_id
  end

  def down
    add_column :amoebas, :act_id, :integer
  end
end
