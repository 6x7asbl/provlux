class PostPolicy < ApplicationPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def create?
    true
  end
  alias_method :new?, :create?

  def update?
    user.admin? or user.id == post.user.id
  end
  alias_method :edit?, :update?

  def destroy?
    user.admin or (user.id == post.user.id and not post.published?)
  end

end
