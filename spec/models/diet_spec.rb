require 'rails_helper'

RSpec.describe Diet, type: :model do

 context "attributes" do
  it { is_expected.to respond_to(:name)}
  it { is_expected.to respond_to(:description)}
  it { is_expected.to respond_to(:calories)}
end

context "validations" do
  it { is_expected.to validate_presence_of(:name)}
  it { is_expected.to validate_presence_of(:description)}
  it { is_expected.to validate_presence_of(:calories)}
end


end
