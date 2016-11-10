class CreateAnswer < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :text
      t.integer :responses
      t.references :poll, foreign_key: true
    end
  end
end
