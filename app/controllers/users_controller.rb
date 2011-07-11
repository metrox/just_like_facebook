class UsersController < ApplicationController
  before_filter :login_required, :except => [:new, :create]


  def new
    @user = User.new

    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post }
    end
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => "Thank you for signing up! You are now logged in."
    else
      render :action => 'new'
    end

  end

  def show
    @profil = User.find(params[:id])
    @id = params[:id]
    @posts = Post.where(:id_owner => @id)
    @author = User.find(@id)
    @friendlist = Friendlist.where(:id_friend == @profil.id || :id_user == @profil.id)
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to root_url, :notice => "Your profile has been updated."
    else
      render :action => 'edit'
    end
  end

  def delete
    Post.delete(params[:id])
  end
end
