module Api
    module V1
        class InmueblesController < ApplicationController
            def index
                inmuebles = Inmueble.order('created_at');
                render json: {
                    status: 'Exitoso',
                    message: 'Inmuebles Cargados',
                    data: inmuebles
                }, status: :ok
            end

            def show
                inmuebles = Inmueble.find(params[:id])
                render json: {
                    status: 'Exitoso',
                    message: 'Inmueble Cargado',
                    data: inmuebles
                }, status: :ok                
            end

            def create
                inmuebles = Inmueble.new(inmuebles_params)
                if inmuebles.save
                    render json:{
                        status: 'Exitoso',
                        message: 'Inmueble Creado',
                        data: inmuebles                     
                }, status: :ok
                else 
                    render json:{
                        status: 'Fallido',
                        message: 'Falló en la creación del inmueble',
                        data: inmuebles.errors                      
                    }, status: :unprocessable_entity 
                end                
            end

            def destroy
                inmuebles = Inmueble.find(params[:id])
                if inmuebles.destroy
                    render json:{
                        status: 'Exitoso',
                        message: 'Inmueble Eliminado',
                        data: inmuebles                     
                }, status: :ok
                else 
                    render json:{
                        status: 'Fallido',
                        message: 'Falló en la eliminación del inmueble',
                        data: inmuebles.errors                      
                    }, status: :unprocessable_entity 
                end
            end
            def update
                inmuebles = Inmueble.find(params[:id])
                if inmuebles.update_attributes(inmuebles_params)
                    render json:{
                        status: 'Exitoso',
                        message: 'Inmueble Actualizado',
                        data: inmuebles                     
                }, status: :ok                    
                else
                    render json:{
                        status: 'Fallido',
                        message: 'Falló en la actualización del inmueble',
                        data: inmuebles.errors                      
                    }, status: :unprocessable_entity                    
                end              
            end
            private 
                
            def inmuebles_params
                params.permit(:name, :type_inmueble, :street, :external_number, :internal_number, :neighborhood, :city, :country, :rooms, :bathrooms)
            end      
        end
    end
end