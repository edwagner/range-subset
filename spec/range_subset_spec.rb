require File.dirname(__FILE__) + '/spec_helper'

describe "A Range with subset extensions" do
  # Intersection
  describe "when asked to intersect 1..5 with 2..6" do
    before(:each) do
      @r = (1..5) & (2..6)
      @r2 = (2..6) & (1..5)
    end
    it "should return 2..5" do
      @r.should == (2..5)
      @r2.should == (2..5)
    end
  end
  
  describe "when asked to intersect 1...5 with 2..6" do
    before(:each) do
      @r = (1...5) & (2..6)
      @r2 = (2..6) & (1...5)
    end
    it "should return 2...5" do
      @r.should == (2...5)
      @r2.should == (2...5)
    end
  end
  
  describe "when asked to intersect 1..5 with 2...6" do
    before(:each) do
      @r = (1..5) & (2...6)
      @r2 = (2...6) & (1..5)
    end
    it "should return 2..5" do
      @r.should == (2..5)
      @r2.should == (2..5)
    end
  end
  
  describe "when asked to intersect 1..5 with 2..3" do
    before(:each) do
      @r = (1..5) & (2..3)
      @r2 = (2..3) & (1..5)
    end
    it "should return 2..3" do
      @r.should == (2..3)
      @r2.should == (2..3)
    end
  end

  describe "when asked to intersect 1..5 with 2...3" do
    before(:each) do
      @r = (1..5) & (2...3)
      @r2 = (2...3) & (1..5)
    end
    it "should return 2...3" do
      @r.should == (2...3)
      @r2.should == (2...3)
    end
  end

  describe "when asked to intersect 1...5 with 2..3" do
    before(:each) do
      @r = (1...5) & (2..3)
      @r2 = (2..3) & (1...5)
    end
    it "should return 2..3" do
      @r.should == (2..3)
      @r2.should == (2..3)
    end
  end

  describe "when asked to intersect 1..5 with 7..10" do
    before(:each) do
      @r = (1..5) & (7..10)
      @r2 = (7..10) & (1..5)
    end
    it "should return nil" do
      @r.should == nil
      @r2.should == nil
    end
  end

  describe "when asked to intersect 1..5 with 5..7" do
    before(:each) do
      @r1 = (1..5)
      @r2 = (5..7)
      @r12 = @r1 & @r2
      @r21 = @r2 & @r1
    end
    it "should return 5..5" do
      @r12.should == (5..5)
      @r21.should == (5..5)
    end
  end
  
  describe "when asked to intersect 1...5 with 5..7" do
    before(:each) do
      @r1 = (1...5)
      @r2 = (5..7)
      @r12 = @r1 & @r2
      @r21 = @r2 & @r1
    end
    it "should return nil" do
      @r12.should == nil
      @r21.should == nil
    end
  end
  
  # Comparisons
  describe "when asked to compare ranges," do
    it "1..5 should be a superset of 2..3" do
      (1..5).should be_superset(2..3)
    end
    it "1..5 should be a superset of 2..5" do
      (1..5).should be_superset(2..5)
    end
    it "1..5 should be a superset of 2...5" do
      (1..5).should be_superset(2...5)
    end
    it "1...5 should not be a superset of 2..5" do
      (1...5).should_not be_superset(2..5)
    end
    it "2..3 should be a subset of 1..5" do
      (2..3).should be_subset(1..5)
    end
    it "2..5 should be a subset of 1..5" do
      (2..5).should be_subset(1..5)
    end
    it "2...5 should be a subset of 1..5" do
      (2...5).should be_subset(1..5)
    end
    it "2..5 should not be a subset of 1...5" do
      (2..5).should_not be_subset(1...5)
    end
  end
  
end
