Feature: Show item
  In order to view all available options.
  Buyer
  so that I can easily find what I am looking for and compare items
 
  Background: Items have been added to database
    Given the following items exist:
      |name      |picture                                                                                           |description       |opening_bid|highest_bid|
      |snow white|https://ssl.gstatic.com/movies/tbn_a7d75269b295f037.jpg?size=80x107&web                           |it about snow whit|10         |20         |
      |dredd     |http://ia.media-imdb.com/images/M/MV5BODkyNDQzMzUzOF5BMl5BanBnXkFtZTcwODYyMDEyOA@@._V1._SY317_.jpg|it about dredd    |15         |30         |

  Scenario: Items is anything
    Given I am on the items page
    Then I should see the following items:
      |snow white|<img src='https://ssl.gstatic.com/movies/tbn_a7d75269b295f037.jpg?size=80x107&web'>                           |it about snow whit|10.0        |20.0         |Show|Edit|Destroy|
      |dredd     |<img src='http://ia.media-imdb.com/images/M/MV5BODkyNDQzMzUzOF5BMl5BanBnXkFtZTcwODYyMDEyOA@@._V1._SY317_.jpg'>|it about dredd    |15.0        |30.0         |Show|Edit|Destroy|
