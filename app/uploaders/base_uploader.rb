# encoding: utf-8

class BaseUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # include Cloudinary::CarrierWave if Rails.env.production?
  magen translation missing: en.errors.messages.rmagick_processing_error

  process convert: 'png'

  # # Choose file storage to use for development enverioment
  # if Rails.env.development?
  #   storage :file
  # end

  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "image-uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # public_id
  def public_id
    "#{get_model}/#{Cloudinary::Utils.random_public_id}"
  end

  # Get the model name form the uploader filename
  def get_model
    self.class.name.gsub(/Uploader/,"").pluralize.downcase
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
    ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
    "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  end

  # Versions of the images
  version :standar do
    process resize_to_fill: [800, 600]
  end

  version :mobile do
    process resize_to_fill: [400, 300]
  end

  version :thumbnail do
    process resize_to_fill: [50, 50]
  end

  # File extension whitelist
  def extension_whitelist
    %w(jpg jpeg png)
  end

end
