# frozen_string_literal: true
require "rails_helper"

describe ControlPanel::ChannelsController, type: :controller do
  let(:channel) { FactoryBot.create(:channel) }

  context "#show" do
    #    before { allow(Channel).to receive(:find).with(123).and_return(channel) }
    it "should return a successful response" do
      get :show, params: { id: channel.id }
      expect(response).to have_http_status(:ok)
    end
  end
end
