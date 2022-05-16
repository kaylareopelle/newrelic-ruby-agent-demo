class ApmLogsInContextController < ApplicationController
  class ExampleLogsError < StandardError
    def initialize(msg='This is an example exception')
      Rails.logger.error('ExampleLogsError raised')
      super(msg)
    end
  end

  def index; end

  def show
    raise ExampleLogsError
  rescue StandardError => e
    flash.now[:errors] = e.message
    redirect_to apm_logs_in_context_index_path
  end
end
