class AddSiteIdToChannelsRemoveOrganisation < ActiveRecord::Migration[7.0]
  def change
    add_reference :channels, :site, null: false, foreign_key: true
    remove_column :channels, :organisation_id
  end
end
