class Study < ApplicationRecord

  PHASES = ["PHASE I", "PHASE II", "PHASE III", "PHASE IV", "PHASE V"]
  belongs_to :drug, optional: true
  
  enum phase: PHASES

  validates :uuid, :name, :phase, presence: true
  
  before_validation :add_uuid, if: :new_record?

  def add_uuid
    self.uuid = SecureRandom.uuid
  end
end
