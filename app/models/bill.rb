class Bill < ApplicationRecord
  belongs_to :user
  has_one_attached :file
  validate :file_validation

  def file_validation
    if file.attached?
      if file.blob.byte_size > 1000000
        file.purge
        errors[:base] << 'Archivo demasiado grande'
      elsif !file.blob.content_type.starts_with?('application/pdf')
        file.purge
        errors[:base] << 'Formato incorrecto. Debes elegir un archivo pdf'
      end
    else
      errors[:base] << 'Debes seleccionar un archivo PDF'
    end
  end

end
