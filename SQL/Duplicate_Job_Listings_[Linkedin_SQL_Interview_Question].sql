SELECT COUNT(DISTINCT j1.company_id) as duplicate_companies 
FROM job_listings j1 JOIN job_listings j2 ON 
      j1.job_id != j2.job_id AND
      j1.company_id = j2.company_id AND
      j1.title = j2.title AND
      j1.description = j2.description;