class Project
  attr_reader :backers, :title
  
  def initialize(title)
    @backers = []
    @title = title
  end
  
  def backers=(backers)
    @backers = backers
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end
  
  def add_backer(backer)
    @backers << backer
    
  end
  
end