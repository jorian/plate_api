module PlateApi::PlateObject
  class AuthenticationObject < Base

    has_one :site, "PlateApi::PlateObject::Site"

    def self.api_name
      "authentication_objects"
    end

    def self.parent_class
      Site
    end

  end
end
