class ReqSendersController < ApplicationController
  def index
    @q = ReqSender.ransack(params[:q])
    @req_senders = @q.result(:distinct => true).includes(:student, :req_receiver).page(params[:page]).per(10)

    render("req_senders/index.html.erb")
  end

  def show
    @req_sender = ReqSender.find(params[:id])

    render("req_senders/show.html.erb")
  end

  def new
    @req_sender = ReqSender.new

    render("req_senders/new.html.erb")
  end

  def create
    @req_sender = ReqSender.new

    @req_sender.student_id = params[:student_id]

    save_status = @req_sender.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/req_senders/new", "/create_req_sender"
        redirect_to("/req_senders")
      else
        redirect_back(:fallback_location => "/", :notice => "Req sender created successfully.")
      end
    else
      render("req_senders/new.html.erb")
    end
  end

  def edit
    @req_sender = ReqSender.find(params[:id])

    render("req_senders/edit.html.erb")
  end

  def update
    @req_sender = ReqSender.find(params[:id])

    @req_sender.student_id = params[:student_id]

    save_status = @req_sender.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/req_senders/#{@req_sender.id}/edit", "/update_req_sender"
        redirect_to("/req_senders/#{@req_sender.id}", :notice => "Req sender updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Req sender updated successfully.")
      end
    else
      render("req_senders/edit.html.erb")
    end
  end

  def destroy
    @req_sender = ReqSender.find(params[:id])

    @req_sender.destroy

    if URI(request.referer).path == "/req_senders/#{@req_sender.id}"
      redirect_to("/", :notice => "Req sender deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Req sender deleted.")
    end
  end
end
