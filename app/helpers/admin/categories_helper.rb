module Admin::CategoriesHelper
  def display_categories(categories)
    ret = "<ul>"
    for category in categories
      if category.parent_id.blank?
        ret += "<li>"
        ret += link_to category.name, :action => 'edit', :id => category
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
        ret += find_all_subcategories(subcat)
        ret += '</li>'
      else
        ret += '<li>'
        ret += link_to h(subcat.name), :action => 'edit', :id => subcat
        ret += '</li>'
      end
    }
    ret += '</ul>'
  end

end
