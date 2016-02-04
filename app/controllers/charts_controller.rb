class ChartsController < ApplicationController
  def glist
     part = params[:part]
     @current_user = User.find_by_id(params[:user])
    if(part.match(/week/))
      return week_glist
    elsif(part.match(/month/))
      return month_glist
    elsif(part.match(/year/))
      return year_glist
    end
  end
  def week_glist
    render json: Invest.where("user_id = ? and date(created_at) >= ?",@current_user,Date.today-1.week).pluck("date(created_at) as created_at, amount")
  end

  def year_glist
    render json: Invest.where("user_id = ? and date(created_at) >= ?",@current_user,Date.today-1.year).pluck("date(created_at) as created_at, amount")
  end

  def month_glist
    render json: Invest.where("user_id = ? and date(created_at) >= ?",@current_user,Date.today-1.month).pluck("date(created_at) as created_at, amount")
  end
end
