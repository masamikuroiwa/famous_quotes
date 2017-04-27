require 'rails_helper'

RSpec.describe Author, type: :model do
  let(:author) { FactoryGirl.build(:author) }
  specify "妥当なオブジェクト" do
    expect(author).to be_valid
  end
  specify "nameは空であってはならない" do
    author[:name] = ''
    expect(author).not_to be_valid
    expect(author.errors[:name]).to be_present
  end
  specify "nameは255文字以内" do
    author[:name] = 'ア' * 256
    expect(author).not_to be_valid
    expect(author.errors[:name]).to be_present
  end
end
