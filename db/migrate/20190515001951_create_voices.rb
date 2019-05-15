class CreateVoices < ActiveRecord::Migration[5.2]
  def change
    create_table :voices do |t|
      t.text :comment
      t.timestamps
    end
  end
end
