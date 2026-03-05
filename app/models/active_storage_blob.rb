class ActiveStorageBlob < ActiveStorage::Blob
  def self.ransackable_attributes(auth_object = nil)
    ["byte_size", "checksum", "content_type", "created_at", "filename", "id", "key", "metadata", "service_name"]
  end
end