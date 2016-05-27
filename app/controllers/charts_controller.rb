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
    res = {}
    res2 = []
    Invest.where("user_id = ? and date(created_at) >= ?",@current_user,Date.today-1.week).group("name,created_at").pluck("date(created_at) as created_at, amount, name").map do |n,v,a|
        res[a] = Array.new() if res[a].nil?
        res[a] << [n,v]
   end
   res.each_pair{|k,v| res2<<{name: k, data: v}}
   render json: res2
  end

  def year_glist
    res = {}
    res2 = []
    Invest.where("user_id = ? and date(created_at) >= ?",@current_user,Date.today-1.year).group("name,created_at").pluck("date(created_at) as created_at, amount, name").map do |n,v,a|
        res[a] = Array.new() if res[a].nil?
        res[a] << [n,v]
   end
   res.each_pair{|k,v| res2<<{name: k, data: v}}
   render json: res2
  end

  def month_glist
    res = {}
    res2 = []
    Invest.where("user_id = ? and date(created_at) >= ?",@current_user,Date.today-1.month).group("name,created_at").pluck("date(created_at) as created_at, amount, name").map do |n,v,a|
        res[a] = Array.new() if res[a].nil?
        res[a] << [n,v]
   end
   res.each_pair{|k,v| res2<<{name: k, data: v}}
   render json: res2
  end
end
