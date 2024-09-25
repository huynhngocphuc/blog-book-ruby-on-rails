# config/initializers/shrine.rb

require 'shrine'
require 'shrine/storage/file_system' # Sử dụng lưu trữ đơn giản trên đĩa cục bộ

Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/cache'), # Lưu trữ tạm thời
  store: Shrine::Storage::FileSystem.new('public', prefix: 'uploads'),       # Lưu trữ chính
}

Shrine.plugin :activerecord # Hoặc :sequel nếu bạn sử dụng Sequel ORM
Shrine.plugin :cached_attachment_data # Để lưu tạm thời dữ liệu đính kèm