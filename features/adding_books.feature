Feature: Adding Books
  In order to keep my list of books up to date
  As a user
  I want to be able to easily add books to my list

  Scenario:  Adding a book
    Given I am on the homepage
    When I follow "New Book"
    And I fill in "Title" with "Let's get Testy"
    And I fill in "Author" with "Testy McTesterson"
    And I press "Create Book"
    Then I should see "Book was successfully created."
