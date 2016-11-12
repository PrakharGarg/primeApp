class User < ActiveRecord::Base
  include Authority::Abilities
  include Authority::UserAbilities

  rolify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  self.authorizer = AdminAuthorizer

  def display_name
    "#{first_name} #{last_name}"
  end
end
