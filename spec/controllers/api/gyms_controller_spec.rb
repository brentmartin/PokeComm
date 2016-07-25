require "rails_helper"

RSpec.describe Api::GymsController, :type => :controller do

  describe "GET /api/gyms" do
    it "returns a gym" do
      # Set up the test's data
      # Create a gym
      Gym.create(name: "Homeslice Gym")

      # Call the method
      # Hit the gyms endpoint
      get :index

      # Check the method's response to
      # Expect that the gym that we created was returned
      expect(response.body).to include("Homeslice Gym")
    end

    context "when a controlling_team is specified" do
      it "returns a gym that is controlled by that team" do
        # Set up the test's data
        # Create a gym
        Gym.create(name: "Homeslice Gym", controlling_team: "red")

        # Call the method
        # Hit the gyms endpoint
        get :index, controlling_team: 'red'

        # Check the method's response to
        # Expect that the gym that we created was returned
        expect(response.body).to include("Homeslice Gym")
      end

  end

end
