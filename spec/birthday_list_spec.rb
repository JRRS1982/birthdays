require './lib/birthday_list.rb'

describe "BirthdayList" do
  it "Returns confirmation that a new object of Birthday is a Class" do
    # arrange + act
    example = BirthdayList.new
    # assess
    expect(BirthdayList.new.class).to be_kind_of(Class)
  end
end

  describe "#initialize" do
    it "Creates an Array" do
      # arrange + act
      bday = BirthdayList.new
      # assess
      expect(bday.birthday_list_object).to be_kind_of(Array)
    end
    
  describe "#add" do
    it "Adds a name to the array as a hash key" do
      # arrange + act
      bday = BirthdayList.new
      bday.add('Jeremy')
      # assess
      expect(bday.birthday_list_object).to include('Jeremy')
    end

  end
  