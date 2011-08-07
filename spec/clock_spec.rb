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

  it "tests display 00:00:01" do
    clock = Clock.new
    expected = "O\n" +
      "OOOO\n" +
      "OOOO\n" +
      "OOOOOOOOOOO\n" +
      "OOOO"
    clock.display('00:00:01').should == expected
  end

  it "tests display 00:00:02" do
    clock = Clock.new
    expected = "Y\n" +
      "OOOO\n" +
      "OOOO\n" +
      "OOOOOOOOOOO\n" +
      "OOOO"
    clock.display('00:00:02').should == expected
  end

  it "tests display 00:00:03" do
    clock = Clock.new
    expected = "O\n" +
      "OOOO\n" +
      "OOOO\n" +
      "OOOOOOOOOOO\n" +
      "OOOO"
    clock.display('00:00:03').should == expected
  end

  it "tests display 00:01:00" do
    clock = Clock.new
    expected = "Y\n" +
      "OOOO\n" +
      "OOOO\n" +
      "OOOOOOOOOOO\n" +
      "YOOO"
    clock.display('00:01:00').should == expected
  end

  it "tests display 00:02:00" do
    clock = Clock.new
    expected = "Y\n" +
      "OOOO\n" +
      "OOOO\n" +
      "OOOOOOOOOOO\n" +
      "YYOO"
    clock.display('00:02:00').should == expected
  end

  it "tests display 00:03:00" do
    clock = Clock.new
    expected = "Y\n" +
      "OOOO\n" +
      "OOOO\n" +
      "OOOOOOOOOOO\n" +
      "YYYO"
    clock.display('00:03:00').should == expected
  end

  it "tests display 00:05:00" do
    clock = Clock.new
    expected = "Y\n" +
      "OOOO\n" +
      "OOOO\n" +
      "YOOOOOOOOOO\n" +
      "OOOO"
    clock.display('00:05:00').should == expected
  end

  it "tests display 00:10:00" do
    clock = Clock.new
    expected = "Y\n" +
      "OOOO\n" +
      "OOOO\n" +
      "YYOOOOOOOOO\n" +
      "OOOO"
    clock.display('00:10:00').should == expected
  end

  it "tests display 00:15:00" do
    clock = Clock.new
    expected = "Y\n" +
      "OOOO\n" +
      "OOOO\n" +
      "YYROOOOOOOO\n" +
      "OOOO"
    clock.display('00:15:00').should == expected
  end

  it "tests display 00:20:00" do
    clock = Clock.new
    expected = "Y\n" +
      "OOOO\n" +
      "OOOO\n" +
      "YYRYOOOOOOO\n" +
      "OOOO"
    clock.display('00:20:00').should == expected
  end

  it "tests display 00:55:00" do
    clock = Clock.new
    expected = "Y\n" +
      "OOOO\n" +
      "OOOO\n" +
      "YYRYYRYYRYY\n" +
      "OOOO"
    clock.display('00:55:00').should == expected
  end

  it "tests display 01:00:00" do
    clock = Clock.new
    expected = "Y\n" +
      "OOOO\n" +
      "ROOO\n" +
      "OOOOOOOOOOO\n" +
      "OOOO"
    clock.display('01:00:00').should == expected
  end

  it "tests display 05:00:00" do
    clock = Clock.new
    expected = "Y\n" +
      "ROOO\n" +
      "OOOO\n" +
      "OOOOOOOOOOO\n" +
      "OOOO"
    clock.display('05:00:00').should == expected
  end

  it "tests display 10:00:00" do
    clock = Clock.new
    expected = "Y\n" +
      "RROO\n" +
      "OOOO\n" +
      "OOOOOOOOOOO\n" +
      "OOOO"
    clock.display('10:00:00').should == expected
  end

  it "tests display 15:00:00" do
    clock = Clock.new
    expected = "Y\n" +
      "RRRO\n" +
      "OOOO\n" +
      "OOOOOOOOOOO\n" +
      "OOOO"
    clock.display('15:00:00').should == expected
  end

  it "tests display 20:00:00" do
    clock = Clock.new
    expected = "Y\n" +
      "RRRR\n" +
      "OOOO\n" +
      "OOOOOOOOOOO\n" +
      "OOOO"
    clock.display('20:00:00').should == expected
  end
end
