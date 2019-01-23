class ImportarJob < ProgressJob::Base
    def initialize(progress_max)
        super progress_max: progress_max
    end
    def perform
      update_progress
    end
end