class UsersController < ApplicationController
  # コピペの分
    def profile
      @user = User.find(session[:user_id])
    end

    def edit
      @user = User.find(session[:user_id])
      if @user.update(session_params)
        redirect_to :back
      else
        render 'edit'
      end

    end

    # def update
    #   @job = Job.find(params[:id])
    #   if @job.update(job_params)
    #     redirect_to :back
    #   else
    #     render 'edit'
    #   end
    # end

    def show
     render "new"
    end

    def login
      # @user = User.find_by(email: params[:email])

    end


      def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          redirect_to jobs_joblist_path
        end
      end


    def session_create
      #@User = [:id, :name, :email, :password]
      params[:email]  #これでとって
      params[:password]

      #emailからはデータを取ってくるだけ。 取ってきたデータのpasswordと 入力したpasswordを比べる(if)のが正解
      # @user = User.find_by_password params[:password]　#→これはいらない
      user = User.find_by_email(params[:email])
      if user.present? && user.password == params[:password] # もしユーザが存在するかつパスワード比較
        # @user ==
        # user.password == params[:user]   #この処理がどうなるかわからない？ @user == user
        # セッションのキー:user_idへユーザーのIDを登録
        session[:user_id] = user.id
        flash[:notice] = 'ログイン完了'
         redirect_to "/users/mypage?id=#{user.id}"
      else
           # flash変数にメッセージをセット
           session[:user_id] = nil
           params[:password] = nil
           @user = nil
           redirect_to '/users/login'#→URLに飛ばす.newの意味は？→userを新しく作る意味になるから
           flash[:alert] = "もう一度入力してください。"
           #render "new" →URLに飛ばす

      end
    end

    def logout
     session[:user_id] = nil
     redirect_to "/top"
    end

    def destroy
      session[:user_id] = nil
      @user = nil
      redirect_to '/login'
    end

    def user
      if session[:user_id]
        # @current_userがnilかfalseならログインユーザーを代入
        @user ||= User.login(session[:user_id])
      end
    end


  def mypage
    @user = User.find(session[:user_id])
    @entry = Entry.where(user_id: session[:user_id])
  end

  def new
  end


  private
      def user_params
        params.permit(:name,:hurigana,:email,:password)
      end
      #
      def session_params
        params.require(:user).permit(:name,:hurigana,:email,:password)
      end

end
