require 'spec_helper'

describe "mutants/show" do
  before(:each) do
    @mutant = assign(:mutant, stub_model(Mutant,
      :name => "Name",
      :power => "Power"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Power/)
  end
end
