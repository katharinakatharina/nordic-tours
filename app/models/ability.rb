class Ability
  include CanCan::Ability

  def initialize(user)
    if
      user ||= User.new # guest user (not logged in)
      can :manage, User, id: user.id
    else
      user.admin?  # additional permissions for administrators
      can :manage, :all
    end
  end
end
