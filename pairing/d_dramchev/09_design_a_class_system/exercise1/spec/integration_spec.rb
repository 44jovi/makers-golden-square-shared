require 'contacts_list.rb'
require 'diary_entry.rb'
require 'diary.rb'
require 'task_list.rb'

RSpec.describe "integration tests" do
  context "returns list of all diary entries" do
    it "returns list of entries (one entry added)" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("title", "contents")
      diary.add(diary_entry)
      expect(diary.all).to eq [diary_entry]
    end
  end

  context "view task list within diary" do
    it "returns task list within diary" do
      diary = Diary.new
      task_list = TaskList.new
      task_list.add("task 1")
      expect(diary.show_task_list(task_list)).to eq ["task 1"]
    end
  end

  context "with multiple entries added" do
    it "find readable entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title", "one two")
      diary_entry_2 = DiaryEntry.new("title", "one two three")
      diary_entry_3 = DiaryEntry.new("title", "one")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      diary.add(diary_entry_3)
      result = diary.readable_entries_in_given_time(1, 2)
      expect(result).to eq [diary_entry_1, diary_entry_3]
    end

    it "find readable entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title", "one " * 15)
      diary_entry_2 = DiaryEntry.new("title", "one " * 20)
      diary_entry_3 = DiaryEntry.new("title", "one " * 30)
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      diary.add(diary_entry_3)
      result = diary.readable_entries_in_given_time(5, 2)
      expect(result).to eq []
    end
  end

  context "ContactsList returns phone numbers from Diary" do
    it "returns a list of phone numbers extracted from Diary (one number)" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title", "contents 1")
      diary_entry_2 = DiaryEntry.new("title", "12345678901")
      diary_entry_3 = DiaryEntry.new("title", "hello world")
      diary_entry_4 = DiaryEntry.new("title", "12345678902")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      diary.add(diary_entry_3) 
      diary.add(diary_entry_4)
      expect(diary.all_phone_numbers).to eq ["12345678901", "12345678902"]
    end
  end
end


      # contacts_list = ContactsList.new
      # expect(contacts_list.all).to eq ["12345678901"]  