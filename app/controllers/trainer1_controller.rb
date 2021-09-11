class Trainer1Controller < ApplicationController
 
 def index
     @coaches = Coach.all
 end
 
 def christy
   @coaches = Coach.all
 end

end
