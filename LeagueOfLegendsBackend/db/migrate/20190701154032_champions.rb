class Champions < ActiveRecord::Migration[5.2]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :sum1
      t.string :sum2
      t.string :rank
      t.belongs_to :team, foreign_key: true
    end
  end
end
