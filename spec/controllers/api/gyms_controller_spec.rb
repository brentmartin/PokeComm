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

end
