class CreateFunctionModules < ActiveRecord::Migration
  def change
    create_table :function_modules do |t|
      t.string :name
      t.boolean :is_display

      t.timestamps null: false
    end
  end
end
