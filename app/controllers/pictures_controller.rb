class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
  end

  def index
    @list_of_pictures = Picture.all
  end

  def new
  end

  def create
    p = Picture.new
    p.source = params[:source]
    p.caption = params[:caption]
    p.save
    #write code for it to be shared to facebook and twitter for example "Twitter::Client.tweet("this is my tweeeet! :)")" or "Twitter::Client.tweet( <%= params[:source] %>)"
    redirect_to "http://localhost:3000/all_pictures", :notice => "Picture posted successfully!"
  end

  def destroy
    p = Picture.find(params[:id])
    p.destroy
    redirect_to "http://localhost:3000/all_pictures", :notice => "Picture exterminated."
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    p = Picture.find(params[:id])
    p.source = params[:source]
    p.caption = params[:caption]
    p.save  
    redirect_to "http://localhost:3000/picture_details/#{p.id}", :notice => "Picture updated! :)"
  end
end
