class Teams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.belongs_to :game, foreign_key: true
    end
  end
end
