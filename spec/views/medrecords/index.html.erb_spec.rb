require 'spec_helper'

describe "medrecords/index" do
  before(:each) do
    assign(:medrecords, [
      stub_model(Medrecord,
        :p_pid => 1,
        :bt => "Bt",
        :bp => 2,
        :hr => 3,
        :defib => "Defib",
        :hc => "Hc",
        :drugs => "Drugs",
        :alergies => "Alergies"
      ),
      stub_model(Medrecord,
        :p_pid => 1,
        :bt => "Bt",
        :bp => 2,
        :hr => 3,
        :defib => "Defib",
        :hc => "Hc",
        :drugs => "Drugs",
        :alergies => "Alergies"
      )
    ])
  end

  it "renders a list of medrecords" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Bt".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Defib".to_s, :count => 2
    assert_select "tr>td", :text => "Hc".to_s, :count => 2
    assert_select "tr>td", :text => "Drugs".to_s, :count => 2
    assert_select "tr>td", :text => "Alergies".to_s, :count => 2
  end
end
