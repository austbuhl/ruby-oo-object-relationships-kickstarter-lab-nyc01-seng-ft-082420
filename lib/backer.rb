class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.filter {|proj_back| proj_back.backer == self}.map{|backer| backer.project}
    end
end