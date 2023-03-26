class AddSuspendedAtToChannels < ActiveRecord::Migration[7.0]
  def change
    add_column :channels, :suspended_at, :datetime
  end
end
