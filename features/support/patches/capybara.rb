#if Object.const_defined? :Capybara
#    module Capybara
#            alias :response :page
#	        end
#		end

if Object.const_defined? :Capybara

  module Capybara

    module DSL

      alias :response :page

    end

  end

end