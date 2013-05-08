class CreateFoottypes < ActiveRecord::Migration
  def change
    create_table :foottypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
