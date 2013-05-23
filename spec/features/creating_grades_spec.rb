require 'spec_helper'

feature "Creating Grades" do
  let!(:student) { FactoryGirl.create(:student) }
  let!(:assignment) { FactoryGirl.create(:assignment) }

  scenario "creating a new grade" do
    visit "/"
    click_link "Show"
    save_and_open_page
    click_link student.name
    fill_in "Score", with: assignment.points
    click_button "Save Grade"

    current_path.should == assignment_path(assignment)
    page.should have_content("Successfully saved score for assignment.")
  end
end
