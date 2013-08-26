Job.property(:next_job_ids, placeholder: "Space separated Job IDs")
Job.property(:run_next_jobs_only_when_this_build_succeed, type: :boolean)

Job.after_execute { Altria::Pipeline::Pipeliner.new(self).after_execute }
