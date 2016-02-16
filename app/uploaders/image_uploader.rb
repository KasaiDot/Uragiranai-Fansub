class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :blog do
    resize_to_fill(600, 200)
  end
  version :adminblog do
    resize_to_fill(770, 200)
  end
  version :projet do
    resize_to_fill(700, 200)
  end
  version :pshow do
    resize_to_fill(700, 400)
  end
  version :slide do
    resize_to_fill(400, 300)
  end
  version :partenaires do
    resize_to_fill(88, 31)
  end
  version :thumb3 do
    resize_to_fill(900, 300)
  end
  version :staff do
    resize_to_fill(150, 150)
  end
end