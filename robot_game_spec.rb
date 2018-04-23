require 'robot_game'

describe Robotgame do
  it "testcase1" do
    testcase1 = Robotgame. new(0, 0, "NORTH")
    output = testcase1.play(["MOVE","REPORT"])
    expect(output[0]).to eq 0
    expect(output[1]).to eq 1
    expect(output[2]).to eq "NORTH"
  end
  it "testcase2" do
    testcase2 = Robotgame. new(0, 0, "NORTH")
    output = testcase2.play(["LEFT","REPORT"])
    expect(output[0]).to eq 0
    expect(output[1]).to eq 0
    expect(output[2]).to eq "WEST"
  end
  it "testcase3" do
    testcase3 = Robotgame. new(1, 2, "EAST")
    output = testcase3.play(["MOVE","MOVE","LEFT","MOVE","REPORT"])
    expect(output[0]).to eq 3
    expect(output[1]).to eq 3
    expect(output[2]).to eq "NORTH"
  end
  it "testcase4" do
    testcase4 = Robotgame. new(2, 2, "NORTH")
    output = testcase4.play(["MOVE","MOVE","MOVE","MOVE","REPORT"])
    expect(output[0]).to eq 2
    expect(output[1]).to eq 4
    expect(output[2]).to eq "NORTH"
  end
  it "testcase5" do
    testcase5 = Robotgame. new(0, 4, "NORTH")
    output = testcase5.play(["INVALID"])
    expect(output).to eq "Invalid Option"
  end
end
