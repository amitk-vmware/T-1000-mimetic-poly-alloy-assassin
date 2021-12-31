
FARADAY_CONN = Faraday.new do |builder|
  builder.use Faraday::Response::Logger if Rails.env.development?
  builder.adapter Faraday::Adapter::NetHttp
end
