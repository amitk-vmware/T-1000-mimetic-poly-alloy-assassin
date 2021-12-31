# frozen_string_literal: true

configuration = YAML.load_file("#{Rails.root}/config/globals.yml")[Rails.env]

configuration.each do |key, value|
  ENV[key] = value
end
