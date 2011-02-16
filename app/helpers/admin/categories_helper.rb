module Admin::CategoriesHelper
  def display_categories(categories)
    ret = "<ul>"
    for category in categories
      if category.parent_id.blank?
        ret += "<li>"
        ret += link_to category.name, :action => 'edit', :id => category
        ret += " | "
        ret += link_to 'Destroy', admin_category_path(category), :confirm => 'Are you sure?', :method => :delete
        ret += find_all_subcategories(category) if category.children.size > 0
        ret += "</li>"
      end

    end
    ret += "</ul>"
  end

  def find_all_subcategories(category)
    ret = '<ul>'
    category.children.each { |subcat|
      if subcat.children.size > 0
        ret += '<li>'
        ret += link_to h(subcat.name), :action => 'edit', :id => subcat
        ret += " | "
        ret += link_to 'Destroy', admin_category_path(subcat), :confirm => 'Are you sure?', :method => :delete
        ret += find_all_subcategories(subcat)
        ret += '</li>'
      else
        ret += '<li>'
        ret += link_to h(subcat.name), :action => 'edit', :id => subcat
        ret += " | "
        ret += link_to 'Destroy', admin_category_path(subcat), :confirm => 'Are you sure?', :method => :delete
        ret += '</li>'
      end
    }
    ret += '</ul>'
  end

end
