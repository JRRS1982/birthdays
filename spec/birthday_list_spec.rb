require './lib/birthday_list.rb'

describe "BirthdayList" do
  it "Returns confirmation that a new object of Birthday is a Class" do
    example = BirthdayList.new
    expect(BirthdayList.new.class).to be_kind_of(Class)
  end
end

describe "#initialize" do
  it "Makes an array to enable us to add things" do
    example = BirthdayList.new
    expect(example.birthday_list_array).to be_kind_of(Array)
  end
end

describe "#add" do
  it "Can add a name/dob to the array as a hash" do
    example = BirthdayList.new
    expect(example.add('Jeremy', '09/07/1982')).to eql([{'Jeremy' => '09/07/1982'}])
  end

  it "Can add multiple names/dobs to the array as a hash" do
    example_list = BirthdayList.new
    example_list.add('bob', '01/01/1999')
    array = example_list.add('Jeremy', '09/07/1982')
    expect(array).to eql([{'bob' => '01/01/1999'}, {'Jeremy' => '09/07/1982'}])
  end
end

describe "#print" do
  begin
    example_list = BirthdayList.new
    example_list.add('bob', '01/01/1999')
  end
    
  it "Can print the names/dob in a nice way!" do
    expect(example_list.print).to eql([{'bob' => '01/01/1999'}])
  end
end


  #   # describe "#print" do
  #   #   it "Prints the birthday list" do
  #   #     # arrange + act
  #   #     example = BirthdayList.new
  #   #     # assess
  #   #     expect(example.print).to be_an_instance_of(example)
  #   #   end
  #   # end
  #   # describe "#remove" do
  #   #   it "Removes the selected element from the birthday list" do
  #   #     # arrange + act
  #   #     ........
  #   #     # assess
  #   #     expect().to be_kind_of()
  #   #   end
  

  # describe "#add" do
  #   it "Adds a name to the array as a hash key" do
  #     # arrange + act
  #     example = BirthdayList.new
  #     # assess
  #     expect(example.add("Jeremy", '09/07/1982')).to eql([{"Jeremy" => '09/07/1982'}])
  #   end
  #   it "Adds a second name to the array as a hash key" do
  #     # arrange + act
  #     example = BirthdayList.new
  #     example.add('bob', '1/1/2001')
  #     result = example.add("Jeremy", '09/07/1982')
  #     # assess
  #     expect(result).to eql([{'bob'=>'1/1/2001'},{"Jeremy"=>"09/07/1982"])
  #   end
  # end