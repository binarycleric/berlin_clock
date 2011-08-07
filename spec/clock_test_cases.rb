require "clock"

describe Clock, "#display" do
  it "tests display 00:00:00" do
    clock = Clock.new
    expected = "Y\n" +
      "OOOO\n" +
      "OOOO\n" +
      "OOOOOOOOOOO\n" +
      "OOOO"
    clock.display('00:00:00').should == expected
  end

  it "tests display 13:17:01" do
    clock = Clock.new
    expected = "O\n" +
      "RROO\n" +
      "RRRO\n" +
      "YYROOOOOOOO\n" +
      "YYOO"
    clock.display('13:17:01').should == expected
  end

  it "tests display 23:59:59" do
    clock = Clock.new
    expected = "O\n" +
      "RRRR\n" +
      "RRRO\n" +
      "YYRYYRYYRYY\n" +
      "YYYY"
    clock.display('23:59:59').should == expected
  end

  it "tests display 24:00:00" do
    clock = Clock.new
    expected = "Y\n" +
      "RRRR\n" +
      "RRRR\n" +
      "OOOOOOOOOOO\n" +
      "OOOO"
    clock.display('24:00:00').should == expected
  end
end
