module Vimeo
  class Parser < HTTParty::Parser
    SupportedFormats.merge!({
      "application/vnd.vimeo.video+json;version=3.2" => :json
    })
  end
end
