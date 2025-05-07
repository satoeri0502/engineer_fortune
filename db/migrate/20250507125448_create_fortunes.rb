class CreateFortunes < ActiveRecord::Migration[7.2]
  def change
    create_table :fortunes do |t|
      t.string :error_rate
      t.string :bug_fortune
      t.string :commit_power

      t.timestamps
    end
  end
end
