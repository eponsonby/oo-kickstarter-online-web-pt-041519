class Project
  attr_reader :backers, :title
  
  def initialize(title)
    @backers = []
    @title = title
  end
  
  def backer=(backer)
    @backers = backers
    backers
  
  def add_backer(backer_instance)
    @backers << backer_instance
    backer_instance.back_project(self)
      while !@backed_projects.include?(self)
    end
  end
  
end