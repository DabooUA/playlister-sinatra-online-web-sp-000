module Slugifiable
    module InstanceMethods
      def slug
        name.gsub(" ", "-").downcase
      end
    end
  
    module ClassMethods
      def find_by_slug(slug)
        self.all.find {|object| object.slug == slug}
      end
    end
  end