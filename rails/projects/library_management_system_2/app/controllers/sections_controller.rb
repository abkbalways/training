class SectionsController < ApplicationController
  def section
    @sections = Section.all
  end
end
