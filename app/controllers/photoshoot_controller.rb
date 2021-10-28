class PhotoshootController < ApplicationController
    
    
    def index
        @all_shoots = Photoshoot.all
    end

    def new

    end

    def create
     
       
        begin
            photoshoot_params = params.require(:photoshoot).permit(:title, :date, :cover_image)
            @photoshoot = Photoshoot.create(photoshoot_params)
            @photoshoot.cover_image.attach(params[:cover_image])
            @photoshoot.images.attach(params[:images])
        rescue StandardError
            redirect_to photoshoot_new_path()
        end

        if @photoshoot.cover_image.valid?
            print("ayee")
            redirect_to photoshoot_index_path()
        else
            
            print("nooo")
            flash[:errors] = @photoshoot.errors.full_messages
            redirect_to photoshoot_new_path()
        
            
        end
    end
end
