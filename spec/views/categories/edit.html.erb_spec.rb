require 'rails_helper'

RSpec.describe "categories/edit", :type => :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :category => "MyString",
      :weight => "9.99"
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_category[name=?]", "category[category]"

      assert_select "input#category_weight[name=?]", "category[weight]"
    end
  end
end
