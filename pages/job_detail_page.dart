import 'package:flutter/material.dart';
import 'package:work_app/generated/l10n.dart';
import '../services/job_service.dart';
import '../models/job_model.dart';
import 'application_page.dart'; 

class JobDetailPage extends StatelessWidget {
  final String jobId;
  final JobService jobService = JobService();

  JobDetailPage({super.key, required this.jobId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Job>(
      future: jobService.getJobById(jobId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(title: Text(S.of(context).jobdetail)),
            body: const Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(title: Text(S.of(context).jobdetail)),
            body: Center(child: Text('${S.of(context).jobdetailsos} ${snapshot.error}')),
          );
        }

        if (!snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(title: Text(S.of(context).jobdetail)),
            body: Center(child: Text(S.of(context).jobdetailsos1)),
          );
        }

        Job job = snapshot.data!;
        return Scaffold(
            appBar: AppBar(
            title: Row(
              children: [
              const Icon(Icons.work, color: Colors.black),
              const SizedBox(width: 8),
              Text(job.title, style: const TextStyle(color: Colors.white)),
              ],
            ),
            backgroundColor: Colors.blueAccent,
            ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  _buildJobInfo(S.of(context).companyname, job.companyName, Icons.business),
                  _buildJobInfo(S.of(context).description, job.description, Icons.description),
                  _buildJobInfo(S.of(context).location, job.location, Icons.location_on),
                  _buildJobInfo(S.of(context).worktype, job.workType, Icons.access_time),
                  _buildJobInfo(S.of(context).positionlevel, job.positionLevel, Icons.trending_up),
                  _buildJobInfo(S.of(context).department, job.department, Icons.group),
                  _buildJobInfo(S.of(context).contact, job.contactEmail ?? 'Belirtilmemiş', Icons.contact_mail),
                  
                  const SizedBox(height: 20),
                  _buildCandidateCriteria(context, job.candidateCriteria),
                  const SizedBox(height: 20),
                  _buildApplyButton(context, job),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildJobDescription(String description) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        description,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildJobInfo(String title, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.blueAccent),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                value,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCandidateCriteria(BuildContext context, List<String> criteria) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).CandidateCriteria,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 10),
        ...criteria.map((c) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text('- $c', style: const TextStyle(fontSize: 16)),
          );
        }).toList(),
      ],
    );
  }

  Widget _buildApplyButton(BuildContext context, Job job) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ApplicationPage(
              jobId: job.jobId!,
              email: job.contactEmail ?? '',
            ),
          ),
        );
      },
      icon: const Icon(Icons.send),
      label: Text(S.of(context).apply),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        textStyle: const TextStyle(fontSize: 18),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
