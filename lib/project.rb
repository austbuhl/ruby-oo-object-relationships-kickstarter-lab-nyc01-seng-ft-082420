class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.filter {|proj_back| proj_back.project == self}.map {|projects| projects.backer}
    end
end