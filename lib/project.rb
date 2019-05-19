class Project
  attr_reader :backers, :title
  
  def initialize(title)
    @backers = []
    @title = title
  end
  
  def backers=(backers) #project belongs to a backer
    @backers = backers
    backer.back_project(self) unless backers.backed_projects.include?(self)
  end
  
  def add_backer(backer_instance)
    @backers << backer_instance
  end
  
end