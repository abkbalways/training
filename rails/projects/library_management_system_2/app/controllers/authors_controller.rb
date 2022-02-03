class AuthorsController < ApplicationController
  def author
    @authors = Author.all
  end
end