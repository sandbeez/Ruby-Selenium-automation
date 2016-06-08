

require 'rubygems'
require 'watir-webdriver'
require_relative 'Adoption_helper'
include AdoptionHelper

	go_to_puppy_site
	select_puppy_number 1
	puts 'first puppy selected'
	click_complete_adoption
	puts 'click on complete button'
	complete_purchase('Attu', '123 bubu st', 'attu@email.com', 'Check')
	puts 'Successfully submitted order'
	assertion
	puts 'return true'
	close_browser
	puts 'Closing the browser'



