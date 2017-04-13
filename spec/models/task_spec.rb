require 'rails_helper'

RSpec.describe Task, type: :model do
  before(:all) do
    @task = Task.new(name: "Sample text")
  end
  it 'Sample Maple' do
    expect(@task.title).to eq("Sample text")
  end
    it 'Validations' do
     task = FactoryGirl.create(:task)
     task.title.should == "Text Sample"
 end
  it 'is not valid with a name longer than 55 symbols' do
    task = Task.new(title: 'a' * 55)
    expect(task).to be_valid
  end
end