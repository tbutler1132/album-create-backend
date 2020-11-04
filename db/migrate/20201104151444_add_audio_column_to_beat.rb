class AddAudioColumnToBeat < ActiveRecord::Migration[6.0]
  def change
    add_column :beats, :audio, :string
  end
end
