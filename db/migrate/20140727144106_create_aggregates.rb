class CreateAggregates < ActiveRecord::Migration
  def change
    create_table :aggregates do |t|
      t.references :flag
      t.string :mode
      t.string :difficulty
      t.integer :correct_count, default: 0
      t.integer :total_count, default: 0
    end
  end
end
