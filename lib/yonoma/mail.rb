module Yonoma
    class Mail
      def self.send(params)
        Client.request(:post, "/email/send", params)
      end
    end
end
