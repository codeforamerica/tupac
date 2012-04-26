class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :github_repo

      t.timestamps
    end
  end
end
