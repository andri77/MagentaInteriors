package pages

import geb.Page;

class GoogleHomePage extends Page {
	
	static url = 'http://www.google.com/'

	static at = {
		assert title == 'Google'
	}

	static content = {
		searchInput { $('input', name: 'q') }
		searchButton { $('button', name: 'btnG') }
	}

	public searchFor(String searchTerm) {
		searchInput.value(searchTerm)
		searchButton.click()
	}

}