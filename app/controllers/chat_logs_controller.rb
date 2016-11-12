class ChatLogsController < ApplicationController
  respond_to :js

  before_action :authenticate_user!
  before_action :set_chat_log, only: [:show, :edit, :update, :destroy]

  authorize_actions_for ChatLog

  authority_actions delete: 'delete'

  # GET /chat_logs
  def index
    set_chat_logs
  end

  # GET /chat_logs/1
  def show
  end

  # GET /chat_logs/new
  def new
    @chat_log = ChatLog.new
  end

  # GET /chat_logs/1/edit
  def edit
  end

  # POST /chat_logs
  def create
    authorize_action_for(ChatLog)
    @chat_log = ChatLog.new(chat_log_params)
    @chat_log.user_id = current_user.id
    @chat_log.save
    set_chat_logs
   end

  # PATCH/PUT /chat_logs/1
  def update
    authorize_action_for(@chat_log)
    @chat_log.update(chat_log_params)
    set_chat_logs
  end

  def delete
    @chat_log = ChatLog.find(params[:chat_log_id])
  end

  # DELETE /chat_logs/1
  def destroy
    authorize_action_for(@chat_log)
    @chat_log.destroy
    set_chat_logs
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chat_log
      @chat_log = ChatLog.find(params[:id])
    end

    def set_chat_logs
      @chat_logs = ChatLog.all
    end

    # Only allow a trusted parameter "white list" through.
    def chat_log_params
      params.require(:chat_log).permit(:user_id, :message)
    end
end
