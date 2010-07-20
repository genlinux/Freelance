class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end
  
  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end
  
  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end
  
  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end
  
  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])
    
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    
    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
  
  #Login authentication
  def login
    f
    if session[:user_id] && session[:user_id] == self.current_user.id
      redirect_back_or_default :controller => "admin/dashboard", :action => "index"
      return
    end
    
    @page_title = "#{this_blog.blog_name} - #{_('login')}"
    case request.method
      when :post
      self.current_user = User.authenticate(params[:user][:login], params[:user][:password])
      
      if logged_in?
        session[:user_id] = self.current_user.id
        
        if params[:remember_me] == "1"
          self.current_user.remember_me unless self.current_user.remember_token?
          cookies[:auth_token] = {
            :value => self.current_user.remember_token,
            :expires => self.current_user.remember_token_expires_at,
            :httponly => true # Help prevent auth_token theft.
          }
        end
        add_to_cookies(:typo_user_profile, self.current_user.profile.label, '/')
        
        self.current_user.update_connection_time
        flash[:notice]  = _("Login successful")
        redirect_back_or_default :controller => "admin/dashboard", :action => "index"
      else
        flash.now[:error]  = _("Login unsuccessful")
        @login = params[:user][:login]
      end
    end
  end
end
