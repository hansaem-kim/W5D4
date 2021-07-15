class Remove < ActiveRecord::Migration[5.2]
  def change
    remove_column :visits, :short_url
    add_column :visits, :url_id, :integer

  end
end
