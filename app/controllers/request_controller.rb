class RequestController < ApplicationController

=begin
  get '/home/post' do
     erb :postit
    end

   post '/home/post' do
      @student=Student.find_by(rgno: params[:rgno])
      request=Request.create(title: params[:title],body: params[:body],teacher_id: params[:teacherid],student_id: @student.id)
      redirect "/home/teachers"
  end
=end
  post "/home/teachers/:id" do
     @teacher = Teacher.find(params[:id])
    @student = Student.find_by(rgno: params[:rgno])
    Request.create(title: params[:title], body: params[:body], teacher_id: @teacher.id, student_id: @student.id)
    redirect "/home/teachers"
  end
end
