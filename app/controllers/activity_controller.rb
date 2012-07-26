class ActivityController < ApplicationController
  def activities
    @activities = Activity.order("category").all
  end
end
