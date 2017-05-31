class UserController < ApplicationController
  

  def new 
    session[:value] = params[:name]
      if session[:value].present?
     redirect_to user_step1_path
    end
  end
  def step1
    session[:value2] = params[:skills]
    if session[:value2].present?
     redirect_to user_step2_path
    end
  end
  def save 
     @verification = UserDetail.new()
     @verification.name = session[:value]
     @verification.city = session[:value2]
     if @verification.save
      flash[:success] = "your data saved successfully"
      redirect_to user_new_path
    end 
  end
  

  def step2
    session[:value3] = params[:email]
  # # @lang_known = Languages_Known.new
  # session[:value] = params[:user_language]
  #    @form2 = session[:value]
    if session[:value3].present?
     redirect_to user_step1_path
    end
  end
 #  def create
 #    @verification = UserDetail.new(params[:country])
 # #     @post = params[:name]
 # #     session[:value] = params[:name]
 #       if @verification.save
 #       redirect_to user_new_path
 #       else
 #       render :step2
 #       end
 #  end
    def test_params
       params.permit(:city)
     end
end
