module Yonoma
    class Email
      def self.send(params)
        Client.request(:post, "/email/send", params)
      end
    end
end
