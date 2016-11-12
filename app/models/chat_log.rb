class ChatLog < ActiveRecord::Base
  include Authority::Abilities

  self.authorizer = AllUsersAuthorizer

  belongs_to :user

  default_scope -> { order(created_at: :desc) }
end
