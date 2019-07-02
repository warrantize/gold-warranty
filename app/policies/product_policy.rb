class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true # tous les users peuvent créer des restaurants
  end

  def new?
    create?
  end

  def show?
    true
  end

  def update?
    user.admin?
  end

   def edit?
    update?
   end

   def destroy?
    update?
   end

end
