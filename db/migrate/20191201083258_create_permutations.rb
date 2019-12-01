class CreatePermutations < ActiveRecord::Migration[6.0]
  def change
    create_table :permutations do |t|

      t.timestamps
    end
  end
end
