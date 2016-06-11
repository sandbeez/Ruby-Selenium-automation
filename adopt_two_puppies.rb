
 require 'rubygems'
 require 'watir-webdriver'
 require_relative 'adoption_helper'
 require "logger"
 include AdoptionHelper


	logger = Logger.new(STDOUT)
	logger.level = Logger::DEBUG
	go_to_puppy_site
	logger.debug "Navigated and logged in to the puppy site"
	select_puppy_number 1
	logger.debug "first puppy selected"
	continue_adopting_puppies
	select_puppy_number 2
	logger.debug  "Second puppy selected"
	click_complete_adoption
	logger.debug "click on complete button"
	complete_purchase('Attu', '123 bubu st', 'attu@email.com', 'Check')
	logger.debug "Successfully submitted order"
	assertion
	logger.debug ("Assert that:"+ @successMessage + "message is displayed")
	close_browser
	logger.debug "Closing the browser"















