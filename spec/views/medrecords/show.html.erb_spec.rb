require 'spec_helper'

describe "medrecords/show" do
  before(:each) do
    @medrecord = assign(:medrecord, stub_model(Medrecord,
      :p_pid => 1,
      :bt => "Bt",
      :bp => 2,
      :hr => 3,
      :defib => "Defib",
      :hc => "Hc",
      :drugs => "Drugs",
      :alergies => "Alergies"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Bt/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Defib/)
    rendered.should match(/Hc/)
    rendered.should match(/Drugs/)
    rendered.should match(/Alergies/)
  end
end
