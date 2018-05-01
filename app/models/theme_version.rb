class ThemeVersion < ApplicationRecord
  mount_uploader :theme_file, ThemeFileUploader

  belongs_to :theme
end
