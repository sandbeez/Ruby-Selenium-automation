
module AdoptionHelper

	def go_to_puppy_site
	  	@browser = Watir::Browser.new :firefox
	 	@browser.goto 'http://puppies.herokuapp.com'
	 	
	end


	def select_puppy_number(num)
	  	@browser.button(:value => 'View Details', :index => num - 1).click
	  	@browser.button(:value => 'Adopt Me!').click
  
	end
	def continue_adopting_puppies
		@browser.button(:value => 'Adopt Another Puppy').click
	end
	def click_complete_adoption
		@browser.button(:value => "Complete the Adoption").click
	end

	def complete_purchase (name, address, email, pay_type)
		@browser.text_field(:id => "order_name").set(name)
		@browser.text_field(:id => 'order_address').set(address)
		@browser.text_field(:id => 'order_email').set(email)
		@browser.select_list(:id => 'order_pay_type').select(pay_type)
		@browser.button(:value => 'Place Order').click
	end
	def assertion
		@successMessage = 'Thank you for adopting a puppy!'
		fail 'Browser text did not match the assertion text' unless @browser.text.include? @successMessage
		
	end

	def close_browser
		@browser.close
		@browser.quit
	end
end


