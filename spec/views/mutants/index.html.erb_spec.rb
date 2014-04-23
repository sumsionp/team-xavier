require 'spec_helper'

describe "mutants/index" do
  before(:each) do
    assign(:mutants, [
      stub_model(Mutant,
        :name => "Name",
        :power => "Power"
      ),
      stub_model(Mutant,
        :name => "Name",
        :power => "Power"
      )
    ])
  end

  it "renders a list of mutants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Power".to_s, :count => 2
  end
end
