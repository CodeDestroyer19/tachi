class CreateAiHelpers < ActiveRecord::Migration[7.0]
  def change
    create_table :ai_helpers do |t|
      t.string :Name
      t.string :Helper_Type
      t.string :Twitter

      t.timestamps
    end
  end
end
