# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV["AWS_ACCESS_KEY"],
    :aws_secret_access_key  => ENV["AWS_SECRET_KEY"]
  }
  config.fog_directory  = ENV["AWS_BUCKET"]
end

# CarrierWave.configure do |config|
#   config.ignore_integrity_errors = false
#   config.ignore_processing_errors = false
#   config.ignore_download_errors = false
# end
