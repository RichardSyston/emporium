class CreateAdminPublishers < ActiveRecord::Migration
  def change
    create_table :admin_publishers do |t|
      t.column :name, :string, limit: 255, null: false, unique: true
      t.timestamps null: false
    end
  end
end
