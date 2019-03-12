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
    expect(example.add('Jeremy')).to eql(['Jeremy'])
  end

  it "Can add multiple names/dobs to the array as a hash" do
    example_list = BirthdayList.new
    example_list.add('bob')
    array = example_list.add('Jeremy')
    expect(array).to eql(['bob', 'Jeremy'])
  end
end

describe "#print" do

  example_list = BirthdayList.new
  example_list.add('bob')
    
  it "Can print the names/dob in a nice way!" do
    expect(example_list.print).to eql(['bob'])
  end
end

describe '#today' do
  
  example_list = BirthdayList.new

  it "Can print todays date" do
  expect(example_list.today).to eql("12.3.2019")
  end
end


# describe "#dates" do
#   begin
#     example_list = BirthdayList.new
#     example_list.add('bob', )
#   end
    
#   it "Can print the names/dob in a nice way!" do
#     expect(example_list.print).to eql(['bob'])
#   end
# end