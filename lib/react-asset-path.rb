module ReactAssetPath
  VERSION   = '0.0.2'

  class Engine < ::Rails::Engine
  end

  def self.perform?
    Rails.env.production? || Rails.env.staging? || Rails.env.dev?
  end

  def self.mapping
    data   = {}
    asset_host = Rails.application.config.asset_host
    image_files = File.join("**", "*.{jpg,jpeg,png,ico,svg}")

    images_path = Rails.root.join('app/assets/images/')
    images_dir  = images_path.to_s
    image_files_in_dir = File.join(images_dir, image_files)

    Dir.glob(image_files_in_dir).each do |file_path|
      basename = File.basename(file_path)

      Rails.logger.info file_path

      if perform?
        file_path = ActionController::Base.helpers.asset_path(basename)
      else
        file_path = "/assets/#{basename}"
      end

      data[basename] = asset_host ? asset_host + file_path : file_path

    end

    data
  end
end
