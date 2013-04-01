require 'spec_helper'

describe "taxes/edit" do
  before(:each) do
    @tax = assign(:tax, stub_model(Tax,
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
    ))
  end

  it "renders the edit tax form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => taxes_path(@tax), :method => "post" do
      assert_select "input#tax_company_yanglao", :name => "tax[company_yanglao]"
      assert_select "input#tax_company_yiliao", :name => "tax[company_yiliao]"
      assert_select "input#tax_company_shiye", :name => "tax[company_shiye]"
      assert_select "input#tax_company_shengyu", :name => "tax[company_shengyu]"
      assert_select "input#tax_company_gongshang", :name => "tax[company_gongshang]"
      assert_select "input#tax_company_zhufang", :name => "tax[company_zhufang]"
      assert_select "input#tax_person_yanglao", :name => "tax[person_yanglao]"
      assert_select "input#tax_person_yiliao", :name => "tax[person_yiliao]"
      assert_select "input#tax_person_shiye", :name => "tax[person_shiye]"
      assert_select "input#tax_person_shengyu", :name => "tax[person_shengyu]"
      assert_select "input#tax_person_gongshang", :name => "tax[person_gongshang]"
      assert_select "input#tax_person_zhufang", :name => "tax[person_zhufang]"
      assert_select "input#tax_social_yanglao", :name => "tax[social_yanglao]"
      assert_select "input#tax_social_yiliao", :name => "tax[social_yiliao]"
      assert_select "input#tax_social_shiye", :name => "tax[social_shiye]"
      assert_select "input#tax_social_shengyu", :name => "tax[social_shengyu]"
      assert_select "input#tax_social_gongshang", :name => "tax[social_gongshang]"
      assert_select "input#tax_social_zhufang", :name => "tax[social_zhufang]"
    end
  end
end
