class CreateThemeVersions < ActiveRecord::Migration[5.1]
  def change
    create_table :theme_versions do |t|
      t.integer :theme_id
      t.string :version
      t.text :details
      t.string :theme_file

      t.timestamps
    end
  end
end
