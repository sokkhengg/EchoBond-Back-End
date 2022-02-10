class CompaniesController < ApplicationController
      def index
        companies = Company.all
        render json: companies 
      end

      def show
        company = find_company
        render json: company.to_json(include: :reviews) 
      end

      def create
        company = Company.new(company_params)
        if company.save
          render json: company 
        else
          render json: { error: company.errors.messages }, status: 422
        end
      end

      def update
        company = find_company
        if company.update(company_params)
          render json: company
        else
          render json: { error: company.errors.messages }, status: 422
        end
      end

      # def destroy
      #   company = find_company
      #   if company.destroy
      #     head :no_content
      #     render json: { message: "Company deleted" }, status: :ok
      #   else
      #     render json: { errors: company.errors.messages }, status: 422
      #   end
      # end

      private

      def find_company
        Company.find(params[:id])
      end

      def company_params
        params.require(:company).permit(:name, :image_url)
      end
end
