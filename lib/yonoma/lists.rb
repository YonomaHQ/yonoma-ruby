module Yonoma
    class Lists
      def self.list
        Client.request(:get, "/lists/list")
      end
  
      def self.create(params)
        Client.request(:post, "/lists/create", params)
      end
  
      def self.update(list_id, params)
        Client.request(:post, "/lists/#{list_id}/update", params)
      end
  
      def self.retrieve(list_id)
        Client.request(:get, "/lists/#{list_id}")
      end
  
      def self.delete(list_id)
        Client.request(:post, "/lists/#{list_id}/delete")
      end
    end
  end