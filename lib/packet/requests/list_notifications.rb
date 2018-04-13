module Fog
  module Compute
    class Packet
      # Real
      class Real
        def list_notifications
          request(
            :expects => [200],
            :method => "GET",
            :path => "/notifications"
          )
        end
      end

      # Mock
      class Mock
        def list_notifications
          response = Excon::Response.new
          response.status = 200
          response.body = {
            "notifications" => [
              {
                "id" => "string",
                "type" => "string",
                "body" => "string",
                "severity" => "string",
                "read" => "boolean",
                "context" => "string",
                "created_at" => "string",
                "updated_at" => "string",
                "user" => {
                  "href" => "string"
                },
                "href" => "string"
              }
            ]
          }

          response
        end
      end
    end
  end
end
