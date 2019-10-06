class StudentController < ApplicationController
  get "/home/student/sign_up" do
    if is_loggedin?
      flash[:message] = "you have alredy logged in . here is dashboard!"
      @student = current_student
      redirect "/home/student_dashboard/#{@student.id}"
    else
      erb :studentsignup
    end
  end

  post "/home/student/sign_up" do
    if is_loggedin?
      flash[:message] = "you have alredy logged in . here is dashboard!"
      @student = current_student
      redirect "/home/student_dashboard/#{@student.id}"
    else
      @student = Student.create(name: params[:name],
                                rgno: params[:rgno],
                                department: params[:department],
                                email: params[:email],
                                password: params[:password],
                                year: params[:year])
      @student.save
      session[:user_id] = @student.id
      redirect "/home/student_dashboard/#{@student.id}"
    end
  end

  get "/home/student/login" do
    if is_loggedin?
      flash[:message] = "you have alredy logged in . here is dashboard!"
      @student = current_student
      redirect "/home/student_dashboard/#{@student.id}"
    else
      erb :studentlogin
    end
  end

  post "/home/student/login" do
    if is_loggedin?
      flash[:message] = "you have alredy logged in . here is dashboard!"
      @student = current_student
      redirect "/home/student_dashboard/#{@student.id}"
    else
      @student = Student.find_by(rgno: params[:rgno])
      if @student && @student.authenticate(params[:password])
        session[:user_id] = @student.id
        redirect "/home/student_dashboard/#{@student.id}"
      else
        flash[:message] = "your password or username is incorrect!"
        redirect "/home/student/login"
      end
    end
  end

  get "/home/student_dashboard/:id" do
    if is_loggedin?
      @student = Student.find(params[:id])
      if @student.id == session[:user_id]
        @requests = @student.requests
        @senior_requests = @student.senior_requests
        @senior = Senior.find_by(student_id: @student.id)

        erb :studentdashboard
      else
        flash[:message] = "please logout from here ! and login"
        redirect "/home/student_dashboard/#{current_student.id}"
      end
    else
      flash[:message] = "looks like you are not logged in. Login here"
      redirect "/home/student/login"
    end
  end

  get "/logout" do
    if is_loggedin?
      session.clear
      flash[:message] = "you are logged out!"
      redirect "/home"
    else
      redirect "/home"
    end
  end

  get "/home/teachers" do
    #if is_loggedin?
    @teachers = Teacher.all
    @seniors = Senior.all
    @student = current_student
    erb :teachers
    #else
    # flash[:message]="looks like you are not logged in. Login here"
    #redirect "/home/student/login"
    #end
  end

  get "/home/teachers/:id" do
    #if is_loggedin?
    @teacher = Teacher.find(params[:id])

    erb :teacherprofile
    #else
    # flash[:message]="looks like you are not logged in. Login here"
    #redirect "/home/student/login"
    #end
  end

  get "/home/status/:id" do
    @me = Request.find(params[:id])
    @pendingrequest = RequestPending.find_by(reuest_id: params[:id])
    erb :requeststatus
  end
  get "/home/seniorstatus/:id" do
    @me = SeniorRequest.find(params[:id])
    @pendingrequest = SeniorRequestPending.find_by(senior_request_id: params[:id])
    erb :requeststatus
  end
end
