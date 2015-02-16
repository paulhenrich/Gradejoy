require 'rails_helper'

RSpec.describe "categories/index", :type => :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :category => "Category",
        :weight => "9.99"
      ),
      Category.create!(
        :category => "Category",
        :weight => "9.99"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
