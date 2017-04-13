require 'rails_helper'
RSpec.feature Task do
  it 'content' do
    task = create(:task)
    visit tasks_path(task)
    expect(task).to have_content("Title")
  end
  end