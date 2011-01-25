Feature: Internationalization
    In order to view the site in their native language
    As a foreign language-speaking customer
    I want to be able to change the language of the site

    Scenario: View Spanish Homepage
        When I visit the homepage
        And I click "Español"
        Then I should see "Ayuda"

