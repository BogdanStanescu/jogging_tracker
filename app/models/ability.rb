# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    if user.user?
      cannot :access, :rails_admin
    end

    if user.admin?
      can :manage, :all
    end

    if user.supervisor?
      can :manage, :all
      RailsAdmin.config do |config|
        config.model Jogging do
          visible false
        end
      end
    end
  end
end
