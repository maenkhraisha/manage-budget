class PurchasesController < ApplicationController      
    def index
        @user = User.find(current_user.id)
        @purchases = @user.purchases
    end
    def show ;end
    
    def new
        @purchases = Purchase.new
    end  
    def create  
           @new_purchase = current_user.purchases.create(puechase_params)

        if @new_purchase.save
            redirect_to root_path
        end
    end 

    def puechase_params
        params.require(:purchase).permit(:user_id ,  :name , :amount, group_ids: [])
    end
end
