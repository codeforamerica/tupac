class AddDescriptionToLibrary < ActiveRecord::Migration
  def change
    add_column :libraries, :description, :string
  end
end
