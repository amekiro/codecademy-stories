class PagesController < ApplicationController
    def home
        @sleep = Sleep.all

        @input = Sleep.new
    end

    def create
        puts "Check creation"
        if Sleep.exists?(input: sleep_params[:input])
            @sleep = Sleep.find_by input: sleep_params[:input]
            if @sleep.update_attribute(:count, @sleep.count + 1)
                @sleep.update_attribute(:txt, "inputs")
                redirect_to '/'
            else
                render 'edit'
            end
        else
            @sleep = Sleep.new(sleep_params.merge({:count => 1, :txt => "input"}))
            if @sleep.save
                redirect_to '/'
            else
                render 'new'
            end
        end
    end

    def about

    end

    def thanks

    end

    private
    def sleep_params
        params.require(:sleep).permit(:input)
    end
end
