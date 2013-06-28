Job.property(:next_job_ids, placeholder: "Space separated Job IDs")

Job.after_execute { Altria::Pipeline::Pipeliner.new(self).after_execute }
