class MirrorController < ApplicationController
  def code
    render status: params[:code], layout: false, text: params[:code]
  end

  def mirror
    respond_to do |format|
      format.text {render text: params.inspect}
      format.json {render json: params}
      format.html do
        @params = params
        @params.delete(:controller)
        @params.delete(:action)
        @params[:path] = @params.delete(:not_found)
      end
    end
  end
end  
