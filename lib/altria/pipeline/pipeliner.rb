module Altria
  module Pipeline
    class Pipeliner
      attr_reader :job

      def initialize(job)
        @job = job
      end

      def after_execute
        enqueue if has_next_jobs?
      end

      def enqueue
        next_jobs.map(&:enqueue)
      end

      def next_jobs
        Job.where(id: next_job_ids)
      end

      def next_job_ids
        job.next_job_ids.split(" ")
      end

      def has_next_jobs?
        job.next_job_ids.present?
      end
    end
  end
end
