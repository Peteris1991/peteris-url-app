class CreateShortUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :short_urls do |t|
      t.string :mini_url
      t.text :original_url

      t.timestamps
    end
    add_index :short_urls, :mini_url, unique: true
  end
end
