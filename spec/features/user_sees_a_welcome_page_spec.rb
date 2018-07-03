RSpec.describe "a visitor" do
  context "visiting /" do
    it "should see a welcome message" do

      visit '/'

      within ("#greeting") do
        expect(page).to have_content("Welcome!")
      end
    end
  end
end