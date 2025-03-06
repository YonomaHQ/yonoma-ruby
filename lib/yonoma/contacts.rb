module Yonoma
    class Contacts
      def self.create(list_id,params)
        Client.request(:post, "/contacts/#{list_id}/create", params)
      end
  
      def self.unsubscribe(list_id,contact_id,params)
        Client.request(:post, "/contacts/#{list_id}/status/#{contact_id}", params)
      end
  
      def self.add_tag(contact_id,params)
        Client.request(:post, "/contacts/tags/#{contact_id}/add", params)
      end
  
      def self.remove_tag(contact_id,params)
        Client.request(:post, "/contacts/tags/#{contact_id}/remove",params)
      end
    end
end
  