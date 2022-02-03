class CompaniesController < ApplicationController
  # protect_from_forgery with: :null_session # invalid csrf token error

      def index
        companies = Company.all
        render json: companies #CompanySerializer.new(companies, options).serialized_json
      end

      def show
        company = find_company
        render json: company.to_json(include: :reviews) #CompanySerializer.new(company, options).serialized_json
      end

      # can be refactor, but puts all code in one place is easy to edit for now
      def create
        company = Company.new(company_params)
        if company.save
          render json: company #CompanySerializer.new(company).serialized_json
        else
          render json: { error: company.errors.messages }, status: 422
        end
      end

      def update
        company = find_company
        if company.update(company_params)
          render json: company #CompanySerializer.new(company, options).serialized_json
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
        params.require(:company).permit(:name, :image_url) # a different way to write strong params
      end

      # fast_jsonapi "compound document" => including any associated review data in that payload
      # def options
      #   @options ||= { include: %i[reviews] }
      # end
end
