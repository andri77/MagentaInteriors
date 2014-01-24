module PageWithCategory
  include Gizmo::PageMixin

  def valid?
    if title =~ /.*Wallpapers.*/
      return true
    else
      return false
    end
  end

  def title
    find(:xpath, "//title").text
    #find(:xpath, "html/body/div[1]/div/div/div[1]/div[1]/a/img").text
  end






end