require 'spec_helper'

describe "medrecords/new" do
  before(:each) do
    assign(:medrecord, stub_model(Medrecord,
      :p_pid => 1,
      :bt => "MyString",
      :bp => 1,
      :hr => 1,
      :defib => "MyString",
      :hc => "MyString",
      :drugs => "MyString",
      :alergies => "MyString"
    ).as_new_record)
  end

  it "renders new medrecord form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => medrecords_path, :method => "post" do
      assert_select "input#medrecord_p_pid", :name => "medrecord[p_pid]"
      assert_select "input#medrecord_bt", :name => "medrecord[bt]"
      assert_select "input#medrecord_bp", :name => "medrecord[bp]"
      assert_select "input#medrecord_hr", :name => "medrecord[hr]"
      assert_select "input#medrecord_defib", :name => "medrecord[defib]"
      assert_select "input#medrecord_hc", :name => "medrecord[hc]"
      assert_select "input#medrecord_drugs", :name => "medrecord[drugs]"
      assert_select "input#medrecord_alergies", :name => "medrecord[alergies]"
    end
  end
end
