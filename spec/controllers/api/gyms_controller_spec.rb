require "rails_helper"

RSpec.describe Api::GymsController, :type => :controller do

  describe "GET /api/gyms" do
    it "returns a gym" do
      Gym.create(name: "Homeslice Gym")
      get :index
      expect(response.body).to include("Homeslice Gym")
    end

    context "when a controlling_team is specified" do
      it "returns a gym that is controlled by that team" do
        Gym.create(name: "Homeslice Gym", controlling_team: "red")
        get :index, controlling_team: 'red'
        expect(response.body).to include("Homeslice Gym")
      end

      it "does not return a gym that is not controlled by that team" do
        Gym.create(name: "Homeslice Gym", controlling_team: "red")
        get :index, controlling_team: 'blue'
        expect(response.body).to_not include("Homeslice Gym")
      end

      it "throws an error if controllingTeam is invalid" do
        get :index, controlling_team: 'orange'
        expect(response.status).to eq(400)
      end

    end
  end

  describe "GET /api/gym/:id" do
      # Set up the test's data

      # Call the method
      # Hit the gyms endpoint

      # Check the method's response to
      # Expect that the gym that we created was returned
  end

end
