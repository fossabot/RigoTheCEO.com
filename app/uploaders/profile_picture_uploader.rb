class ProfilePictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :crop
    resize_to_fill(100, 100)
  end

  version :md do
    process :crop
    resize_to_fill(225, 225)
  end

  version :large do
    resize_to_limit(350, 350)
  end

  def crop
    return unless model.crop_x.present?
    resize_to_limit(350, 350)
    manipulate! do |img|
      x = model.crop_x.to_i
      y = model.crop_y.to_i
      w = model.crop_w.to_i
      h = model.crop_h.to_i
      img.crop!(x, y, w, h)
    end
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
    ActionController::Base.helpers.image_path('user.png')
  end

  # Add a white list of extensions which are allowed to be uploaded.
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  def filename
    'profile_picture.jpg' if original_filename
  end
end
