class AddPublisheddateToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :publisheddate, :date
  end
end
