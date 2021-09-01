class Trainer1Controller < ApplicationController
 
 def index
   @coaches = Coach.all
 end

end
