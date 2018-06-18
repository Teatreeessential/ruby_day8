class AskController < ApplicationController
    def index 
        @ask = Ask.all
         
        cookies[:user_name] ="안병찬"
    end
    
    def new 
        p request.location #서버로그에 사용자 요청 정보를 찍음 request는 객체 이기때문에 안의 속성값인 ip를 통해 요청 ip를 받을 수 있음
    end
        
    def create 
        ask = Ask.new
        ask.question = params[:question]
        ask.ip_address = request.ip
        ask.region= request.location.region
        ask.save
        flash[:success] = "새 글이 등록 되었습니다."
        redirect_to '/ask' #해당 요청은 index로 간다.
    end
    
    def delete
        ask = Ask.find(params[:id])
        ask.destroy
        redirect_to '/ask'
    end
    
    def delete
        ask = Ask.find(params[:id])
        ask.destroy
        flash[:error] = "글이 삭제 되었습니다."
        redirect_to "/ask"
    end
    
    def edit
        @ask = Ask.find(params[:id])
    end
    
    def update
        ask = Ask.find(params[:id])
        ask.question = params[:question]
        ask.save
        flash[:info] ="글이 수정되었습니다."
        redirect_to '/ask'
    end
    
    def contents
        @ask = Ask.find(params[:id])
    end
end
