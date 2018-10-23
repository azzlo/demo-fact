class Bill < ApplicationRecord
  belongs_to :user
  has_one_attached :file

  validate :file_validation

  def file_validation
    if file.attached?
      if file.blob.byte_size > 1000000
        file.purge
        errors[:base] << 'Too big'
      elsif !file.blob.content_type.starts_with?('image/')
        file.purge
        errors[:base] << 'Wrong format'
      end
    else
      errors[:base] << 'Debes seleccionar un archivo PDF o Imágen'
    end
  end

end
