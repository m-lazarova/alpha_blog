class AddTimestampsToArticles < ActiveRecord::Migration[6.0]
  def change
		#command :tablename where we want the change, :name of the new thing, :type of the new thing
		add_column :articles, :created_at, :datetime
		add_column :articles, :updated_at, :datetime
  end
end
