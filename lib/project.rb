class Project
  attr_reader :backers, :title
  
  def initialize(title)
    @backers = []
    @title = title
  end
  
  def backers=(backers)
    @backers = backers
  end
  
  def add_backer(backer)
    backer.back_project(self) unless backer.backed_projects.include?(self)
    @backers << backer
  end
  
   book.add_backer(steven)

    expect(book.backers).to include(steven)
  end
end