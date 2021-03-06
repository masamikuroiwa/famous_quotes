require 'rails_helper'

RSpec.describe Author, type: :model do
  describe '#valid?' do
    let(:author) { FactoryGirl.build(:author) }
    example "妥当なオブジェクト" do
      expect(author).to be_valid
    end
    example "nameは空であってはならない" do
      author[:name] = ''
      expect(author).not_to be_valid
      expect(author.errors[:name]).to be_present
    end
    example "nameは255文字以内" do
      author[:name] = 'ア' * 256
      expect(author).not_to be_valid
      expect(author.errors[:name]).to be_present
    end
    example "countryは255文字以内" do
      author[:country] = 'ア' * 256
      expect(author).not_to be_valid
      expect(author.errors[:country]).to be_present
    end
    example "noteは1000文字以内" do
      author[:note] = 'ア' * 1001
      expect(author).not_to be_valid
      expect(author.errors[:note]).to be_present
    end
  end

  describe 'sex' do
    it { is_expected.to define_enum_for(:sex).with([:male, :female]) }
  end
end
