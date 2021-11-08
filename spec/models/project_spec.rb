require "rails_helper"

RSpec.describe Project, type: :model do
  context "validations tests" do
    # the two following tests try creating a project with only a title
    # or only a description, both cases expect to fail
    it "ensures the description is present" do
      project = Project.new(description: "Content of the description")
      expect(project.valid?).to eq(false)
    end

    it "ensures the title is present" do
        project = Project.new(title: "Title")
        expect(project.valid?).to eq(false)
      end
    
    # tests creating a project with both fields populated, expects to pass
    it "should be able to save project" do
      project = Project.new(title: "Title", description: "Some description content goes here")
      expect(project.save).to eq(true)
    end
  end

  context "scopes tests" do
    # initilaizes three projects and expects the total count of projects to be
    # equal to three for success
    let(:params) { { title: "Title", description: "some description" } }
    before(:each) do
      Project.create(params)
      Project.create(params)
      Project.create(params)
    end

    it "should return all projects" do
      expect(Project.count).to eq(3)
    end
  end
end
