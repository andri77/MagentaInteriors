module PageWithHome
  include Gizmo::PageMixin

    def fill_in_search query
   fill_in 'q', :with=> query
    end

  def click_submit_button
    find(".search_btn").click
  end

end