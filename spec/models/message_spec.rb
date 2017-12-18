require 'rails_helper'

RSpec.describe Message, type: :model do
  describe "db structure" do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:subject).of_type(:string) }
    it { is_expected.to have_db_column(:body).of_type(:text) }
    it { is_expected.to have_db_column(:sender_id).of_type(:integer) }
    it { is_expected.to have_db_column(:receiver_id).of_type(:integer) }
    it { is_expected.to have_db_column(:status).of_type(:integer) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:subject) }
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_presence_of(:sender) }
    it { is_expected.to validate_presence_of(:receiver) }
    it { is_expected.to validate_presence_of(:status) }
  end
end
