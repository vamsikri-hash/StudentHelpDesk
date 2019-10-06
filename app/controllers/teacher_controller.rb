class TeacherController < ApplicationController
  get "/home/teacher/sign_up" do
    if is_loggedin?
      flash[:message] = "you are already logged in!"
      @teacher = current_teacher
      redirect "/home/teacher_dashboard/#{@teacher.id}"
    else
      erb :teachersignup
    end
  end

  post "/home/teacher/sign_up" do
    if is_loggedin?
      flash[:message] = "you are already logged in!"
      @teacher = current_teacher
      redirect "/home/teacher_dashboard/#{@teacher.id}"
    else
      @teacher = Teacher.create(name: params[:name],
                                teachid: params[:Uid],
                                department: params[:department],
                                email: params[:email],
                                degree: params[:degree],
                                ai1: params[:ai1],
                                ai2: params[:ai2],
                                ai3: params[:ai3],
                                password: params[:password])
      @teacher.save
      session[:user_id] = @teacher.teachid
      redirect "/home/teacher_dashboard/#{@teacher.id}"
    end
  end

  get "/home/teacher/login" do
    if is_loggedin?
      flash[:message] = "you are already logged in!"
      @teacher = current_teacher
      redirect "/home/teacher_dashboard/#{@teacher.id}"
    else
      erb :teacherlogin
    end
  end

  post "/home/teacher/login" do
    if is_loggedin?
      flash[:message] = "you are already logged in!"
      @teacher = current_teacher
      redirect "/home/teacher_dashboard/#{@teacher.id}"
    else
      @teacher = Teacher.find_by(teachid: params[:Uid])
      if @teacher && @teacher.authenticate(params[:password])
        session[:user_id] = @teacher.teachid
        redirect "/home/teacher_dashboard/#{@teacher.id}"
      else
        flash[:message] = "incorrect id or password"
        redirect "/home/teacher/login"
      end
    end
  end

  get "/home/teacher_dashboard/:id" do
    if is_loggedin?
      @teacher = Teacher.find(params[:id])
      @requests = @teacher.requests
      erb :teacherdashboard
    else
      flash[:message] = "please login here"
      redirect "/home/teacher/login"
    end
  end

  get "/logout" do
    if is_loggedin?
      session.clear
      flash[:message] = "your are logged out!"
      redirect "/home"
    end
  end

  get "/home/view/:id" do

    #@id=params[:id]

    @studentrequest = Request.find_by(id: params[:id])
    @requestedstudent = Student.find_by(id: @studentrequest.student_id)

    erb :view
  end

  post "/home/view/:id" do
    @requestpending = RequestPending.create(meetingdate: params[:date], meetingtime: params[:time], comments: params[:comments], reuest_id: params[:id])
    if params[:date] != ""
      @req = RequestPending.find_by(reuest_id: params[:id]).update(status: "Accepted")
    else
      @req = RequestPending.find_by(reuest_id: params[:id]).update(status: "Declined")
    end
    redirect "/home/teacher_dashboard/#{current_teacher.id}"
  end
end
