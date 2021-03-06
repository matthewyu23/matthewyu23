class PhotoshootController < ApplicationController
    
    
    def index
        @all_shoots = Photoshoot.all
    end

    def new

    end

    def create

       
       
        begin
            if (params[:photoshoot][:password] == "88888888")
                photoshoot_params = params.require(:photoshoot).permit(:title, :date, :cover_image)
                @photoshoot = Photoshoot.create!(photoshoot_params)
                @photoshoot.cover_image.attach(params[:cover_image])
                @photoshoot.images.attach(params[:images])
            else
                return redirect_to photoshoot_new_path()
            end
            
            
        rescue StandardError
            redirect_to photoshoot_new_path()
        else
            redirect_to photoshoot_index_path()
        end

    end

    def show
        print(params)
        @photoshoot = Photoshoot.find(params[:id])

    end


    def photoshoot_params
        params.require(:photoshoot).permit(:title, :date, :cover_image, :images[])
    end
end
