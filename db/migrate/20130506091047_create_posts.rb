class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :s_start
      t.string :s_end
      t.string :p_start
      t.string :p_end
      t.string :f_start
      t.string :f_end
	  t.int :liansai_id
	  
      t.timestamps
    end
  end
end
