class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def admin
    render ({ :template => "item_templates/admin"})
  end

  def insert_item
    @x = Item.new
    @x.link_url = params.fetch(:query_link_url)
    @x.link_description = params.fetch(:query_link_description)
    @x.thumbnail_url = params.fetch(:query_thumbnail_url)
    @x.save
    redirect_to("/")
  end

end
