json.extract! theme, :name
json.version theme.theme_versions.last.version
json.details_url theme_version_url(theme.theme_versions.last, format: :html)
json.download_url (theme.theme_versions.last.theme_file_url)
