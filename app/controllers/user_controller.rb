class UserController < ApplicationController
  

  def new 
    @form1 = params[:name]
    session[:value] = @form1
    if session[:value].present?
     redirect_to user_step1_path
    end
   end

  def save 
     @verification = UserDetail.new
     if @verification.save
      redirect_to user_new_path
    end 
  end
  def step1
    @form1 = session[:value]
    @form2 = @form1
  end

  def step2
    
  # # @lang_known = Languages_Known.new
  # session[:value] = params[:user_language]
  #    @form2 = session[:value]
     
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
