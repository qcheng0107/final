class ReqReceiversController < ApplicationController
  def index
    @q = ReqReceiver.ransack(params[:q])
    @req_receivers = @q.result(:distinct => true).includes(:student, :req_sender).page(params[:page]).per(10)

    render("req_receivers/index.html.erb")
  end

  def show
    @req_receiver = ReqReceiver.find(params[:id])

    render("req_receivers/show.html.erb")
  end

  def new
    @req_receiver = ReqReceiver.new

    render("req_receivers/new.html.erb")
  end

  def create
    @req_receiver = ReqReceiver.new

    @req_receiver.student_id = params[:student_id]

    save_status = @req_receiver.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/req_receivers/new", "/create_req_receiver"
        redirect_to("/req_receivers")
      else
        redirect_back(:fallback_location => "/", :notice => "Req receiver created successfully.")
      end
    else
      render("req_receivers/new.html.erb")
    end
  end

  def edit
    @req_receiver = ReqReceiver.find(params[:id])

    render("req_receivers/edit.html.erb")
  end

  def update
    @req_receiver = ReqReceiver.find(params[:id])

    @req_receiver.student_id = params[:student_id]

    save_status = @req_receiver.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/req_receivers/#{@req_receiver.id}/edit", "/update_req_receiver"
        redirect_to("/req_receivers/#{@req_receiver.id}", :notice => "Req receiver updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Req receiver updated successfully.")
      end
    else
      render("req_receivers/edit.html.erb")
    end
  end

  def destroy
    @req_receiver = ReqReceiver.find(params[:id])

    @req_receiver.destroy

    if URI(request.referer).path == "/req_receivers/#{@req_receiver.id}"
      redirect_to("/", :notice => "Req receiver deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Req receiver deleted.")
    end
  end
end
