Feature: Testing JSONPlaceholder API

Background:
* url 'https://jsonplaceholder.typicode.com'

Scenario: Verify POSTS API
  Given path 'posts'
  When method GET
  Then status 200

  # Loop through each item
  And match each response == {userId: '#notnull', id: '#number', title: '#string', body: '#string'}
  
  # Generating the report in HTML
  * configure report = { type: 'html', name: 'test_report.html' }
