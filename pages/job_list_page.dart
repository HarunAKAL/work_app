import 'package:flutter/material.dart';
import 'package:work_app/generated/l10n.dart';
import '../services/job_service.dart';
import '../models/job_model.dart';
import 'job_detail_page.dart';

class JobListPage extends StatelessWidget {
  final JobService jobService = JobService();

  JobListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
          children: [
            const Icon(Icons.work_history, color: Colors.white),
            const SizedBox(width: 8),
            Text( S.of(context).joblist, style: const TextStyle(color: Colors.white)),
          ],
        ),
       
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: StreamBuilder<List<Job>>(
        stream: jobService.getJobs(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Hata: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text(S.of(context).jobadssos));
          }

          List<Job> jobs = snapshot.data!;
          return ListView.builder(
            itemCount: jobs.length,
            itemBuilder: (context, index) {
              Job job = jobs[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    if (job.jobId != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JobDetailPage(jobId: job.jobId!),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(S.of(context).jobadssos1)),
                      );
                    }
                  },
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueAccent.shade100,
                      child: const Icon(Icons.work, color: Colors.white),
                    ),
                    title: Text(
                      job.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            job.companyName,
                            style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(Icons.check_circle_outline, size: 16, color: Colors.green),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  '${S.of(context).criteria} ${job.candidateCriteria.join(", ")}',
                                  style: const TextStyle(fontSize: 12),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blueAccent, size: 16),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
