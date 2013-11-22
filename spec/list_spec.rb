require 'list'

describe List, "when empty" do
  before do
    @empty_list = []
  end

  it "should be empty" do
    @empty_list.should be_empty
  end

  it "should size 0" do
    @empty_list.size.should == 0
  end

  it "returns nil" do
    @empty_list.first.should be_nil
  end

  after do
    @empty_list = nil
  end
end

describe List, "when initialized with object" do
  before do
    # @list = List.new(3, Hash.new)
    @list = List.new(3) { Hash.new }
    @list[0][:cat] = "Nuko"
  end

  it "should not affect others" do
    @list.should == [{:cat => "Nuko"}, {}, {}]
  end
end
