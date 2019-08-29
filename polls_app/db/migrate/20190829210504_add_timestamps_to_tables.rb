class AddTimestampsToTables < ActiveRecord::Migration[5.2]
  def change
    add_timestamps(:polls, null: false)
    add_timestamps(:questions, null: false)
    add_timestamps(:answer_choices, null: false)
    add_timestamps(:responses, null: false)
  end
end
