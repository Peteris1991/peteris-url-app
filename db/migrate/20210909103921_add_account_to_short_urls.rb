class AddAccountToShortUrls < ActiveRecord::Migration[6.1]
  def change
    add_column :short_urls, :account_id, :integer
    add_index :short_urls, :account_id
  end
end
