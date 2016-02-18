class PagesController < ApplicationController
  def create
    page = Page.find_or_initialize_by(url: params[:url])
    page_is_new = page.new_record?

    if !page_is_new || page.save
      last_fetch = page.fetched_at
      page_is_expired = last_fetch.present? ?
        last_fetch < 1.minute.ago :
        true

      page.fetch! if page_is_new || page_is_expired

      render json: page
    else
      render json: page.errors, status: 422
    end
  end

  def show
    page = Page.find(params[:id])

    render json: page
  end
end
