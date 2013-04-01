require 'spec_helper'

describe "taxes/index" do
  before(:each) do
    assign(:taxes, [
      stub_model(Tax,
        :company_yanglao => 1.5,
        :company_yiliao => 1.5,
        :company_shiye => 1.5,
        :company_shengyu => 1.5,
        :company_gongshang => 1.5,
        :company_zhufang => 1.5,
        :person_yanglao => 1.5,
        :person_yiliao => 1.5,
        :person_shiye => 1.5,
        :person_shengyu => 1.5,
        :person_gongshang => 1.5,
        :person_zhufang => 1.5,
        :social_yanglao => 1.5,
        :social_yiliao => 1.5,
        :social_shiye => 1.5,
        :social_shengyu => 1.5,
        :social_gongshang => 1.5,
        :social_zhufang => 1.5
      ),
      stub_model(Tax,
        :company_yanglao => 1.5,
        :company_yiliao => 1.5,
        :company_shiye => 1.5,
        :company_shengyu => 1.5,
        :company_gongshang => 1.5,
        :company_zhufang => 1.5,
        :person_yanglao => 1.5,
        :person_yiliao => 1.5,
        :person_shiye => 1.5,
        :person_shengyu => 1.5,
        :person_gongshang => 1.5,
        :person_zhufang => 1.5,
        :social_yanglao => 1.5,
        :social_yiliao => 1.5,
        :social_shiye => 1.5,
        :social_shengyu => 1.5,
        :social_gongshang => 1.5,
        :social_zhufang => 1.5
      )
    ])
  end

  it "renders a list of taxes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
