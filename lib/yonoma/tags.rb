module Yonoma
    class Tags
      def self.list
        Client.request(:get, "/tags/list")
      end
  
      def self.create(params)
        Client.request(:post, "/tags/create", params)
      end
  
      def self.update(tag_id, params)
        Client.request(:post, "/tags/#{tag_id}/update", params)
      end
  
      def self.retrieve(tag_id)
        Client.request(:get, "/tags/#{tag_id}")
      end
  
      def self.delete(tag_id)
        Client.request(:post, "/tags/#{tag_id}/delete")
      end
    end
end
