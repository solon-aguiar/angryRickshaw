class ActivityController < ApplicationController
  def activities
    @activities = Activity.order("category").all
  end

  def activity
    if Activity.exists?(params[:id])
      @activity = Activity.find(params[:id])
    else
      redirect_to activities_path
    end

  end
end
