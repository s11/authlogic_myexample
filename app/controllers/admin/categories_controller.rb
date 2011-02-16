class Admin::CategoriesController < InheritedResources::Base
  before_filter :require_user
  ###All the methods are generated automatically

  ### override the create method to redirect to index page
  def create
    create! { admin_categories_path}
  end

  ### override the update method to redirect to index page
  def update
    update! {admin_categories_path}
  end
end
