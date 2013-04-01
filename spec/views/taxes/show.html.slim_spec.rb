require 'spec_helper'

describe "taxes/show" do
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

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
