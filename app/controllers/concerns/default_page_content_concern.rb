module DefaultPageContentConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'Devcamp1 Portfolio | My Portfolio Website'
    @seo_keywords = 'Canvas Wang Portfolio'
  end
end
