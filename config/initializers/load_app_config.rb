# This file is named "01..." because we want the APP_CONFIG hash to be available as soon as possible.
# Airbrake's initializer uses APP_CONFIG.
raw_config = File.read("#{Rails.root}/config/app_config.yml")

APP_CONFIG = YAML.load(raw_config)[Rails.env].symbolize_keys
