# encoding: utf-8

class FactionIconUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  process resize_to_fit: [200, 200]

  version :thumb do
    process resize_to_fit: [48,48]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def default_url
    "http://placehold.it/48x48/512888/512888"
  end
end


