require File.expand_path("../spec_helper.rb", File.dirname(__FILE__))

describe "String.string_to_large_number" do
  it { "".to_large_number.should be_nil }
  it { "nil".to_large_number.should be_nil }
  it { nil.to_s.to_large_number.should be_nil }
  
  it { "1.234 mil".to_large_number.should === 1_234_000.0 }
  it { "5.678 bil".to_large_number.should === 5_678_000_000.0 }
  it { "1.234 tri".to_large_number.should === 1_234_000_000_000.0 }
  it { "1,234.456 tri".to_large_number.should === 1_234_456_000_000_000.0 }
end