require 'rails_helper'

RSpec.describe "studios index page", type: :feature do
  it "can see all studios titles and play count" do

  studio1 = Studio.create(name: "Good Movies",
                           location: "123 Good St")
  studio2 = Studio.create(name: "Bad Movies",
                           location: "123 Bad st")
  @batman = @studio1.movies.create!(name: "Batman Begins",
                                    creation_year: "2007",
                                    genre: "Action")
  @marvel = @studio2.movies.create!(name: "Some Marvel Movie",
                                    creation_year: "2007",
                                    genre: "Action")

    visit "/studios"

    expect(page).to have_content(studio1.name)
    expect(page).to have_content("Location: #{studio1.location}")
    expect(page).to have_content(studio2.name)
    expect(page).to have_content("Location: #{studio2.location}")

    expect(page).to have_content(batman.name)
    expect(page).to have_content(marvel.name)
  end
end
