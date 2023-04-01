class AddOrganisationIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :organisation, null: false, foreign_key: true
  end
end
