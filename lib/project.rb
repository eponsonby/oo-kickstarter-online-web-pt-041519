class Project
  attr_reader :backers, :title
  
  def initialize(title)
    @backers = []
    @title = title
  end
  
  def backers=(backers) #project belongs to a backer
    @backers = backers
    backers.back_project(self) unless 
  end
  
  def add_backer(backer_instance)
    @backers << backer_instance
    # backer_instance.back_project(self)
    #   while !@backed_projects.include?(self)
    # end
  end
  
end