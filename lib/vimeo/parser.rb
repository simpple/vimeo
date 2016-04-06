module Vimeo
  class Parser < HTTParty::Parser
    SupportedFormats.merge!({
      "application/vnd.vimeo.video+json" => :json
    })
  end
end
