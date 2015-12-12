class ProcWorker
  include Sidekiq::Worker

  sidekiq_options throttle: { threshold: 10, period: 1.minute, key: proc { |*args| args.join(':') } }

  def perform(*args)
    puts args.first
  end
end
