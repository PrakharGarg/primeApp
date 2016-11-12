class AdminAuthorizer < ApplicationAuthorizer
  def default(able, facility_user)
    facility_user.has_role? :admin
  end

  def self.default(able, facility_user)
    facility_user.has_role? :admin
  end
end