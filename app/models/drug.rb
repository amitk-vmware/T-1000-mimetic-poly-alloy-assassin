# frozen_string_literal: true

class Drug < ApplicationRecord
  has_many :studies
end
