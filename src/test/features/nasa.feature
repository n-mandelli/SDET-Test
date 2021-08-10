Feature: Nasa open API
  #1.	Retrieve the first 10 Mars photos made by "Curiosity" on 1000 Martian sol.
  #2.	Retrieve the first 10 Mars photos made by "Curiosity" on Earth date equal to 1000 Martian sol.
  #3.	Retrieve and compare the first 10 Mars photos made by "Curiosity" on 1000 sol and on Earth date equal to 1000 Martian sol.
  #4.	Validate that the amounts of pictures that each "Curiosity" camera took on 1000 Mars sol is not greater than 10 times the amount taken by other cameras on the same date.

  Scenario Outline: Retrieve the first 10 Mars photos made by "Curiosity" on 1000 Martian sol
    Given I have access to NASA API
    And I want to retrieve <photos> of Mars made by <camera> on <sol> Martian sol
    When API runs
    Then photos are retrieved successfully
    Examples:
      | photos | camera    | sol        |
      | 10     | curiosity | 1000       |