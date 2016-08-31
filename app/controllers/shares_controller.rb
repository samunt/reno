class SharesController < ApplicationController
  def api
    #sorry i'm a lazy guy I know i shouldn't be doing this here

    max = Project.find(params[:project_id]).max_shares
    share_types = Share.where(project_id: params[:project_id])
    arr = []
    list= []
    share_types.each do |share|
        object = {}
        number_of_shares = (Purchase.where(share_id: share.id).sum(:number_of_shares)*100.0/max).to_i
        object[:y] = number_of_shares.to_i
        object[:legendText] = share.share_type
        object[:label] = share.share_type
        arr << object
        list << (object[:y])
    end
    object = {}
    number_of_shares = 100-Project.find(params[:project_id]).percentage.to_i
    object[:y] = number_of_shares.to_i
    object[:legendText] = "Available"
    object[:label] = "Available"
    arr << object
    list << object[:y]
    max = list.max
    puts max


    arr.each do |x|
      if (x[:y]) == max
        x[:exploded] = true
      end
    end
    arr.map do |x|
      x.to_json
    end
  @list = arr
  render json: @list
  end
end
