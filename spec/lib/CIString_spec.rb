require 'spec_helper'

RSpec.describe CIString do

  before(:each) do
		@text = "Google is a search engine service, google is also an engine for a lot of other services and tools"
  end
  it "should match text with" do
    result = CIString::match(@text, "Google")
    expect(result).to eq "1, 36"
    result = CIString::match(@text, "google")
    expect(result).to eq "1, 36"
    result = CIString::match(@text, "oo")
    expect(result).to eq "2, 37, 94"
    result = CIString::match(@text, "Oo")
    expect(result).to eq "2, 37, 94"
    result = CIString::match(@text, "a")
    expect(result).to eq "11, 15, 46, 51, 65, 89"
    result = CIString::match(@text, "X")
    expect(result).to eq "<no matches>"
  end
end