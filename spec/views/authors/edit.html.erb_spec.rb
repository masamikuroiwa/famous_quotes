require 'rails_helper'

RSpec.describe "authors/edit", type: :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :name => "MyString",
      :country => "MyString"
    ))
  end

  it "renders the edit author form" do
    render

    assert_select "form[action=?][method=?]", author_path(@author), "post" do

      assert_select "input#author_name[name=?]", "author[name]"

      assert_select "input#author_country[name=?]", "author[country]"
    end
  end
end
