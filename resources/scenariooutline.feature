Feature: Bookcategory

 Background: I should be able to see homepage
 Given I enter URL" https://frmo.nopcommerce.com/" in browser
   And I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on home page
    Then I should be able to see top menu tabs with "<categories>"

    Examples:
    | Categories         |
    | Computer           |
    | Electronic         |
    | Apparel            |
    | Digital downloads  |
    | Books              |
    | Jewellery          |
    | Gift card          |

    Scenario Outline: I should be able to see book page with filters
      When I select book category from top menu tabs on home page
      Then I should be navigated to book category
      And I should be able to see "<filters>"

      Examples:
      | filters   |
      | Sort by   |
      | Display   |
      | the Grid  |
      | List tab  |

      Scenario Outline: I should be able to see list of terms of each filter
        Given I am on book page
        When I click on "<filters>"
        And I click on any "<options>"
        Then I should be able to choose any filter options from the list
        And I should be able to see "<result>"

        Examples:
        | filter  | Option              | Result                                                            |
        | Sort by | Name: A to Z        | sorted product with the product name in alphabetocal order A to Z |
        | Sort by | Name: Z to A        | sorted product with the product name in alphabetical orcer Z to A |
        | Sort by | price: low to high  | sorted products with price in descending order                    |
        | Sort by | price: high to low  | sorted products with price in ascenading orcer                    |
        | Sort by | Created on          | Recently added products should be shown first                     |
        | Display | 3                   | 3 products in a page                                              |
        | Display | 6                   | 6 products in a page                                              |
        | Display | 9                   | 9 products in a page                                              |

        Scenario Outline: I should be able to see product display format according to display format type as per given picture in srs document
          Given I am on book page
          When I click on "<display format icon>"
          Then I should be able to see product display format according to display format type as per given picture in SRS document

          Examples:
          | display format icon   |
          | Grid                  |
          | List                  |

