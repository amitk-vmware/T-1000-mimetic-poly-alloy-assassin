# frozen_string_literal: true

class SitesController < ApplicationController
  def index
    @sites = Site.all
  end

  def new
    @site = Site.new
  end

  def create; end

  private

  def permit_params
    params.require(:site).permit(Site.column_names.map(&:to_sym) - %i[id uuid created_at updated_at])
  end
end
