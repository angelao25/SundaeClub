class AddOrganisationIdToChannels < ActiveRecord::Migration[7.0]
  def change
    add_column :channels, :organisation_id, :bigint
  end
end
