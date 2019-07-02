class ReturnPolicy < ApplicationPolicy
  class Scope < Scope
    # def initialize(user, scope)
    #   @user = scope.warranty.user
    #   @scope = scope
    # end

    def resolve
      scope.all
    end
  end

  def create?
    true # all user can perfom this warranty action
  end

  def new?
    create?
  end

  def show?
    user_is_owner_or_admin
  end

  def update?
    user.admin
  end

   def edit?
    update?
   end

   def destroy?
    update?
   end
 private

  def user_is_owner_or_admin
    user.admin || record.warranty.user == user
  end
end
