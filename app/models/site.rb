# frozen_string_literal: true

class Site < ApplicationRecord
  validates :name, :email, :timezone, presence: true
end
