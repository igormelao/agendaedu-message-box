require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  include Devise::Test::ControllerHelpers

  let!(:user)            { FactoryBot.create(:user) }
  let!(:message)         { FactoryBot.create(:message) }
  let(:valid_attributes) { FactoryBot.attributes_for(:message, sender: user) }
  let(:invalid_attributes) { FactoryBot.attributes_for(:message, body: nil) }

  STATUS_READ = 1

  before(:each) do
    request.env['HTTP_ACCEPT'] = 'application/json'
    @request.env['devise.mapping'] = Devise.mappings[:user]
    sign_in user
  end

  describe "GET #show" do
    render_views

    before(:each) do
      get :show, params: { id: message.id }
    end

    it "returns http success" do
      expect(response).to  have_http_status(200)
    end

    it "expect the request message to equals @message" do
      @message_hash = JSON.parse(response.body)
      expect(@message_hash["id"]).to              eql(message.id)
      expect(@message_hash["subject"]).to         eql(message.subject)
      expect(@message_hash["body"]).to            eql(message.body)
      expect(@message_hash["sender"]["id"]).to    eql(message.sender.id)
      expect(@message_hash["receiver"]["id"]).to  eql(message.receiver.id)
      expect(@message_hash["status"]).to          eql(STATUS_READ)
    end
  end

  describe "POST #create" do
    render_views
    
    context "create message successfully" do
      before(:each) do
        post :create, params: { message: valid_attributes, receiver_email: valid_attributes[:receiver][:email] }
      end

      it "redirects to root page" do
        expect(response).to have_http_status(302)
        expect(response).to redirect_to root_path()
      end

      it "with rights attributes" do
        expect(Message.last.subject).to     eql(valid_attributes[:subject])
        expect(Message.last.body).to        eql(valid_attributes[:body])
        expect(Message.last.sender.id).to   eql(valid_attributes[:sender][:id])
        expect(Message.last.receiver.id).to eql(valid_attributes[:receiver][:id])
        expect(Message.last.status).to      eql(valid_attributes[:status])
      end

    end

    context "create message with errors" do
      it "redirect to root with errors" do
        post :create, params: { message: invalid_attributes, receiver_email: valid_attributes[:receiver][:email] }
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "PUT #archive" do
    render_views

    before(:each) do
      put :archive, params: { id: message.id }
    end

    it "returns http success" do
      expect(response).to  have_http_status(302)
    end

    it "expect the request message is archive" do
      expect(Message.last.status).to eql(2)
    end
  end

end
