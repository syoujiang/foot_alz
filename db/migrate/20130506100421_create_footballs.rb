class CreateFootballs < ActiveRecord::Migration
  def change
    create_table :footballs do |t|
      t.string :s_start
      t.string :s_end
      t.string :p_start
      t.string :p_end
      t.string :f_start
      t.string :f_end
      t.string :tmp
      t.string :tmp2

      t.timestamps
    end
  end
end
