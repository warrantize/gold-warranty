class ReturnPolicy < ApplicationPolicy
  class Scope < Scope
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
    user_is_creator_or_admin
  end

  def update?
    user_is_creator_or_admin
  end

   def edit?
    update?
   end

   def destroy?
    update?
   end
end
