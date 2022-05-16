require 'net/http'

class AsyncController < ApplicationController
  def index
    AsyncService.perform
  end
end
