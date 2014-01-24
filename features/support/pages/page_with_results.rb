module PageWithResults
  include Gizmo::PageMixin

def title
 find(:xpath, "html/body/div[1]/div/div/div[1]/div[3]/div/ul/li[2]/strong").text
end

  def valid?
    if title =~ /.*Search results for.*/
      return true
    else
      return false
    end
  end
  
  def item
  find(:xpath, "html/body/div[1]/div/div/div[2]/div/div[1]/div[2]/div[1]/div[1]/p/strong").text
  end

  def product
    find(:xpath, "html/body/div[1]/div/div/div[2]/div/div[1]/div[2]/ul/li/h2/a").text
  end



  end