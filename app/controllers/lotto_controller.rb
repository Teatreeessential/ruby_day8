class LottoController < ApplicationController
    def index
        @last_number = Lotto.last
        @lotto_numbers = Lotto.all
    end
    
    def lotto_number
         my_numbers = *(1..45)
         my_lotto = my_numbers.sample(7).sort
       
        
        u1 = Lotto.new
        u1.lotto_number = my_lotto.to_s
        u1.save
        redirect_to "/lotto"
        
    end
end
