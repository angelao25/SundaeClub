class ControlPanel::ChannelPolicy < ApplicationPolicy
  def show?
    user.email == "user2@example.com"
  end
end
