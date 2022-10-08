require './caesarcipher.rb'

describe '#caesar_cipher' do
  it "Wraps from z-a" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end
  it "Keeps the same case" do
    expect(caesar_cipher("AbCD", 2)).to eql("CdEF")
  end
  it "Works with a negative number" do
    expect(caesar_cipher("Hi", -2)).to eql("Fg")
  end
  it "Works with a large number" do
    expect(caesar_cipher("Hi", 50)).to eql("Fg")
  end
  it "Wraps from a-z" do
    expect(caesar_cipher("Aa", -2)).to eql("Yy")
  end
end