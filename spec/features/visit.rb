require 'rails_helper'
RSpec.feature Task do
  it 'must have content' do
    task = create(:task)
    visit tasks_path(task)
    expect(task).to have_content("Title")
  end
  end