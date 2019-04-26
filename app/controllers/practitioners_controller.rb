class PractitionersController < ApplicationController


  def index
    render json: Practitioner.all
  end

  #Average star
  #practitioners = []
  #Practitioner.all.each { |practitioner| practitioners.push(practitioner.merge(get_average_star(practitioner)))}
  #def get_average_star(practitioner)
  #  stars = 0
  #  practitioner.reviews.each { |review| stars += review.star}
  #  {average_star: stars / practitioner.reviews.length}
  #end
end
