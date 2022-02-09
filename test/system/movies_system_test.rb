require "application_system_test_case"

class MoviesSystemTest < ApplicationSystemTestCase
  test "visiting the show" do
    # As a user,
    # when I visit /movies/1
    # I see the title of the movie "Parasite"
    # I also see the name of the director "Bong Joon-ho"
    movie = Movie.create!(title: "Parasite", director: "Bong Joon-hoo")

    visit movie_path(movie.id)
    assert_text "Parasite"
    assert_text "Bong Joon-ho"
  end

  test "visiting the show for a different movie" do
    # As a user,
    # When I visit a movie with the id of 2,
    # I see the title for that movie
    movie = Movie.create!(title: "Other Movie")

    visit movie_path(movie.id)
    assert_text "Other Movie"
  end
end
