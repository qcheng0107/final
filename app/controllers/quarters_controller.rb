class QuartersController < ApplicationController
  def index
    @quarters = Quarter.page(params[:page]).per(10)

    render("quarters/index.html.erb")
  end

  def show
    @session = Session.new
    @quarter = Quarter.find(params[:id])

    render("quarters/show.html.erb")
  end

  def new
    @quarter = Quarter.new

    render("quarters/new.html.erb")
  end

  def create
    @quarter = Quarter.new


    save_status = @quarter.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/quarters/new", "/create_quarter"
        redirect_to("/quarters")
      else
        redirect_back(:fallback_location => "/", :notice => "Quarter created successfully.")
      end
    else
      render("quarters/new.html.erb")
    end
  end

  def edit
    @quarter = Quarter.find(params[:id])

    render("quarters/edit.html.erb")
  end

  def update
    @quarter = Quarter.find(params[:id])


    save_status = @quarter.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/quarters/#{@quarter.id}/edit", "/update_quarter"
        redirect_to("/quarters/#{@quarter.id}", :notice => "Quarter updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Quarter updated successfully.")
      end
    else
      render("quarters/edit.html.erb")
    end
  end

  def destroy
    @quarter = Quarter.find(params[:id])

    @quarter.destroy

    if URI(request.referer).path == "/quarters/#{@quarter.id}"
      redirect_to("/", :notice => "Quarter deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Quarter deleted.")
    end
  end
end
