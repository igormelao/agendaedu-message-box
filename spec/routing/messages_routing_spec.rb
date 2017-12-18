require 'rails_helper'

RSpec.describe MessagesController, type: :routing do
  it { expect(get: "/messages/new").to route_to("messages#new") }
  it { expect(post: "/messages").to route_to("messages#create") }
  it { expect(get: "/messages/show/1").to route_to("messages#show", id: "1") }
  it { expect(put: "/messages/archive/1").to route_to("messages#archive", id: "1") }
end
