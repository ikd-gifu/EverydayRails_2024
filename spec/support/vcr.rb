require "vcr"

VCR.configure do |config|
  config.cassette_library_dir = "#{::Rails.root}/spec/cassettles"
  config.hook_into :webmock
  config.ignore_localhost = true
  config.configure_rspec_metadata!
end
