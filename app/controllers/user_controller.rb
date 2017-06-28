class UserController < ApplicationController
  

  def new 
    session[:value0] = params[:name]
    session[:value1] = params[:email]
    session[:value2] = params[:phone]
    session[:value3] = params[:city]
    session[:value4] = params[:country]
    if session[:value0].present?
    redirect_to user_step1_path
    end
  end
  def new_data   
    # respond_to do |format|
    #   if session[:value0] == "test"
    #     format.html { redirect_to user_step2_path }
    #   else
    #     format.html { redirect_to user_step2_path }
    #   end
    # end
  end
  def extra
    session[:value0] = params[:name]
    session[:value1] = params[:email]
    session[:value2] = params[:phone]
    session[:value3] = params[:city]
    session[:value4] = params[:country]
    if session[:value0].present?
    redirect_to user_step2_path
    end
  end
  def step1
    @lang = LanguagesCollection.all
    session[:value5] = params[:school_name]
    session[:value6] = params[:percentage]
    session[:value7] = params[:institution_name]
    session[:value8] = params[:percentage2]
    session[:value9] = params[:skills]
    session[:value10] = params[:languages]
     if session[:value6].present?
    redirect_to user_step2_path
    end
  end
   def step1_data
    @lang = LanguagesCollection.all
  end
  def save 
     @user = UserDetail.new()
     @quali = Qualification.new()
     @addskills = AdditionalSkill.new()
     @language = LanguagesKnown.new()
     @user.name = session[:value0]
     @user.email = session[:value1]
     @user.phone = session[:value2]
     @user.city = session[:value3]
     @user.country = session[:value4]
     @quali.school_institution_name = session[:value5]
     @quali.percentage = session[:value6]
     @quali.institution = session[:value7]
     @quali.insti_perc = session[:value8]
     @addskills.skills = session[:value9]
     @language.user_language = session[:value10]
     if @user.save && @quali.save
      flash[:success] = "your data saved successfully"
      redirect_to user_new_path
    end 
    
  end
  

  def step2
  #   session[:value3] = params[:email]
  # # # @lang_known = Languages_Known.new
  # # session[:value] = params[:user_language]
  # #    @form2 = session[:value]
  #   if session[:value3].present?
  #    redirect_to user_step1_path
  #   end
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
    def user_params
      params.require(:userdetail).permit(:name, :email, :phone, :city, :country)
     end
end
