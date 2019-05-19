class Project
  attr_reader :backers, :title
  
  def initialize(title)
    @backers = []
    @title = title
  end
  
  def add_backer(backer_instance)
    @backers << backer_instance
    backer_instance.back_project(project) unless backers.backed_projects.include?(self)
  end
  
end