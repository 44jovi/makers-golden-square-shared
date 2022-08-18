require "task_tracker"

describe TaskTracker do

  describe "#print_tasks" do    
    it "returns 'Paint the house.' after add_task('Paint the house')" do
      tracker = TaskTracker.new
      tracker.add_task("Paint the house")
      expect(tracker.print_tasks).to eq ["Paint the house"]
    end
    it "returns items within array after they are added" do
      tracker = TaskTracker.new
      tracker.add_task("Paint the house")
      tracker.add_task("Fix Macbook")
      expect(tracker.print_tasks).to eq ["Paint the house", "Fix Macbook"]
    end
  end

  describe "#remove_task" do
    it "returns list without the removed task" do
      tracker = TaskTracker.new
      tracker.add_task("Paint the house")
      tracker.add_task("Fix Macbook")
      tracker.remove_task("Paint the house")
      expect(tracker.print_tasks).to eq ["Fix Macbook"]
    end
  end
end