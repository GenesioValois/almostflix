class Api::V1::SearchesController < ApplicationController
  def index
    check_search_value && (return if perfomed?)
    search = PgSearch.multisearch(params[:value]).order('created_at DESC')
    render json: Api::V1::WatchableSerializer.new(search.map(&:searchable))
                                             .serialized_json
  end

  private

  def check_search_value
    render json: { errors: 'Parameter value must have at least 3 characters' } if params[:value].present? && params[:value].length < 3
  end
end
