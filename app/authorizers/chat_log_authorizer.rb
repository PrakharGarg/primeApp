class ChatLogAuthorizer < ApplicationAuthorizer
  def self.readable_by?(facility_user)
    true
  end

  def self.creatable_by?(facility_user)
    true
  end

  def self.updatable_by?(facility_user)
    true
  end

  def self.deletable_by?(facility_user)
    true
  end

  def readable_by?(current_user)
    true
  end

  def creatable_by?(current_user)
    resource.user_id == current_user.id
  end

  def updatable_by?(current_user)
    resource.user_id == current_user.id
  end

  def deletable_by?(current_user)
    resource.user_id == current_user.id
  end
end