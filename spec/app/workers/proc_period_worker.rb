class ProcPeriodWorker
  include Sidekiq::Worker

  sidekiq_options throttle: { threshold: 10, period: proc { |_user_id, period| period } }

  def perform(user_id, period)
    puts user_id
    puts period
  end
end
