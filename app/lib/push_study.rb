# frozen_string_literal: true

class PushStudy
  def initialize(study_ids)
    @study_ids = study_ids
  end

  def process
    response = FARADAY_CONN.post do |request|
      request.headers['Content-Type'] = 'application/json'
      request.url "#{ENV['DRUG_MGMT_SYS_HOST']}/studies/pushed"
      request.body = { studies: push_body }.to_json
    end
    return true if response.status == 200
  end

  def push_body
    @study_ids.map do |study_id|
      study = Study.find(study_id)
      {
        uuid: study.uuid,
        name: study.name,
        phase: study.phase,
        drug: study.drug&.name
      }
    end
  end
end
