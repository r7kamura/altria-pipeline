module Altria
  module Pipeline
    class Pipeliner
      attr_reader :job

      def initialize(job)
        @job = job
      end

      def after_execute
        if ( !job.run_next_jobs_only_when_this_build_succeed || @job.current_build.status )
          enqueue if has_next_jobs?
        end
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
