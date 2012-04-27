class AddLanguageToLibrary < ActiveRecord::Migration
  def change
    add_column :libraries, :language, :string
  end
end
