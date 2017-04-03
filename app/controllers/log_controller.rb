class LogController < ApplicationController
  def current
    @log = Log.last
  end

  def history
    @logs = Log.all
  end

  def random
    @log = Log.order("RANDOM()").first
  end
end
