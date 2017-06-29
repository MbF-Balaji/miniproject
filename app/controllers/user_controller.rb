class UserController < ApplicationController
  

  def new 
    if request.method == 'POST'
    session[:value0] = params[:name]     if params[:name].present?
    session[:value1] = params[:email]    if params[:email].present?
    session[:value2] = params[:phone]    if params[:phone].present?
    session[:value3] = params[:city]     if params[:city].present?
    session[:value4] = params[:country]  if params[:country].present?
    redirect_to user_step1_path
  end
end
  def step1
    @lang = LanguagesCollection.all
    if request.method == 'POST'
    session[:value5] = params[:school_name]        if params[:school_name].present?
    session[:value6] = params[:percentage]         if params[:percentage].present?
    session[:value7] = params[:institution_name]   if params[:institution_name].present?
    session[:value8] = params[:percentage2]        if params[:percentage2].present?
    session[:value9] = params[:skills]             if params[:skills].present?
    session[:value10] = params[:languages]         if params[:languages].present?
    redirect_to user_step2_path
    end
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
      session.clear
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
