class CreateHolders < ActiveRecord::Migration[6.1]
  def change
    create_table :holders do |t|
      t.bigint :amount

      t.timestamps
    end
  end
end
