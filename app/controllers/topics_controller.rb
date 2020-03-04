class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  
  def index
    @topics = Topic.all
  end

  def show
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
            # show page of topic
      redirect_to [@sub, @topic]
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @topic.update(topic_params)
      redirect_to [@sub, @topic]
    else
      render :edit
    end
  end

  def destroy
    @topic.destroy
    redirect_to sub_topics_path
  end

  private 
    # { topic: { title: 'adfasd', body: 'asdfasdf'} }
    def topic_params
      params.require(:topic).permit(:title, :body)
    end

    def set_topic
      @topic = Topic.find(params[:id])
    end


end
