require 'rails_helper'

RSpec.describe List, type: :model do
  describe '#complete_all_tasks!' do
    it 'should mark all tasks from the list as complete' do
      list = List.create(name: "Chores")
      Task.create(complete: false, list_id: list_id)
      Task.create(complete: false, list_id: list_id)
      list.complete_all_tasks
      expect(list.tasks.first.complete).to eq(true)
      expect(list.tasks.first.complete).to eq(true)
    end
  end
end 






