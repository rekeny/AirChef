# frozen_string_literal: true

RSpec.configure do |config|
  config.include ActiveJob::TestHelper

  config.before do
    # TODO: Enable / disable jobs processing in test
    # ActiveJob::Base.queue_adapter.perform_enqueued_jobs = true
    # ActiveJob::Base.queue_adapter.perform_enqueued_at_jobs = true

    clear_enqueued_jobs
    clear_performed_jobs
  end
end
