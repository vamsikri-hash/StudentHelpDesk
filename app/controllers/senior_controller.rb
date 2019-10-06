class SeniorController < ApplicationController
  get "/home/student_dashboard/:id/upgrade" do
    @student = current_student
    erb :upgrade
  end

  post "/home/student_dashboard/:id/upgrade" do
    @student = Student.find_by(rgno: params[:rgno])
    Senior.create(name: @student.name, student_id: @student.id, technologies: params[:technologies], projects: params[:projects], github_link: params[:github_link])
    redirect "/home"
  end

  get "/home/seniors/:id" do
    @senior = Senior.find(params[:id])
    @student = Student.find(@senior.student_id)
    erb :seniorprofile
  end

  post "/home/seniors/:id" do
    @senior = Senior.find(params[:id])
    @student = Student.find_by(rgno: params[:rgno])
    @senior_request = SeniorRequest.create(title: params[:title], body: params[:body], senior_id: @senior.id, student_id: @student.id)
    redirect "/home/teachers"
  end

  get "/home/requestboard" do
    @senior = Senior.find_by(student_id: current_student.id)
    @seniorrequests = @senior.senior_requests
    erb :requestboard
  end

  get "/home/requestboard/:id" do
    @senior_request = SeniorRequest.find(params[:id])
    @requestedstudent = Student.find(@senior_request.student_id)
    erb :requestboardview
  end

  post "/home/requestboard/:id" do
    @seniorrequestpending = SeniorRequestPending.create(meetingdate: params[:date], meetingtime: params[:time], comments: params[:comments], senior_request_id: params[:id])
    if params[:date] != ""
      @req = SeniorRequestPending.find_by(senior_request_id: params[:id]).update(status: "Accepted")
    else
      @req = SeniorRequestPending.find_by(senior_request_id: params[:id]).update(status: "Declined")
    end
    redirect "/home/student_dashboard/#{current_student.id}"
  end
end
