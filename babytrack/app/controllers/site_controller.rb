class SiteController < ApplicationController
  def index
      @feedings = Feeding.order('created_at desc')
      @outs = Out.order('created_at desc')
  end
end
