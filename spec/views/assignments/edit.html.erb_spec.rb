require 'spec_helper'

describe "assignments/edit" do
  before(:each) do
    @assignment = assign(:assignment, stub_model(Assignment,
      :title => "MyString",
      :description => "MyText",
      :points => 1.5
    ))
  end

  it "renders the edit assignment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", assignment_path(@assignment), "post" do
      assert_select "input#assignment_title[name=?]", "assignment[title]"
      assert_select "textarea#assignment_description[name=?]", "assignment[description]"
      assert_select "input#assignment_points[name=?]", "assignment[points]"
    end
  end
end
