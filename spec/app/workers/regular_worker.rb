class RegularWorker
  include Sidekiq::Worker

  def perform(_name)
    puts '...'
  end
end
