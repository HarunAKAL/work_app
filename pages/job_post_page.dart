import 'package:flutter/material.dart';
import 'package:work_app/generated/l10n.dart';
import '../services/job_service.dart';
import '../models/job_model.dart';
import '../services/auth_service.dart';

class JobPostPage extends StatefulWidget {
  const JobPostPage({super.key});

  @override
  JobPostPageState createState() => JobPostPageState();
}

class JobPostPageState extends State<JobPostPage> {
  final JobService jobService = JobService();
  final AuthService authService = AuthService();

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController contactInfoController = TextEditingController();

  String? selectedWorkType;
  String? selectedPositionLevel;
  String? selectedDepartment;
  String? selectedExperienceLevel;
  String? selectedLanguage;
  String? selectedLanguageLevel;
  String? selectedMilitaryStatus;
  List<String> selectedCandidateCriteria = [];

  
  
  
  
  List<String> getWorkTypes(BuildContext context) {
  return [
    S.of(context).fultime,
    S.of(context).parttime,
    S.of(context).intern,
    S.of(context).freelance,
    S.of(context).projectbased,
    S.of(context).periodic,
    S.of(context).remote,
    S.of(context).temporary,
    S.of(context).volunteer,
    S.of(context).other,
  ];
}

  List<String> getpozitionlevel(BuildContext context) {
    return [
      S.of(context).expert,
      S.of(context).newgraduate,
      S.of(context).seniorexpert,
      S.of(context).manager,
      S.of(context).seniormanager,
      S.of(context).other,
      S.of(context).director,
      S.of(context).seniordirector,
      S.of(context).ceo,
      

    ];
  } 
  List<String> getdepartments(BuildContext context) {
    return [
    S.of(context).electricalengineering , 
    S.of(context).mechanicalengineering , 
    S.of(context).softwareengineering , 
    S.of(context).civilengineering , 
    S.of(context).industrialengineering , 
    S.of(context).chemicalengineering , 
    S.of(context).environmentalengineering , 
    S.of(context).biomedicalengineering , 
    S.of(context).aerospaceengineering , 
    S.of(context).nuclearengineering ,  
    S.of(context).architecturalengineering , 
    S.of(context).automotiveengineering , 
    S.of(context).biotechnologyengineering , 
    S.of(context).computerengineering ,  
    S.of(context).marineengineering , 
    S.of(context).miningengineering , 
    S.of(context).petroleumengineering , 
    S.of(context).roboticsengineering , 
    S.of(context).hardware ,
    S.of(context).network ,
    S.of(context).database ,
    S.of(context).security,
    S.of(context).web ,
    S.of(context).mobile ,
    S.of(context).game ,
    S.of(context).iot ,
    S.of(context).ai ,
    S.of(context).bigdata ,
    S.of(context).cloud ,
    S.of(context).devops ,
    S.of(context).erp ,
    S.of(context).marketing ,
    S.of(context).sales ,
    S.of(context).hr ,
    S.of(context).finance ,
    S.of(context).accounting ,
    S.of(context).procurement ,
    S.of(context).logistics ,
    S.of(context).production ,
    S.of(context).quality ,
    S.of(context).maintenance ,
    S.of(context).health ,
    S.of(context).education ,
    S.of(context).law ,
    S.of(context).architecture ,
    S.of(context).design ,
    S.of(context).art ,
    S.of(context).music ,
    S.of(context).literature ,
    S.of(context).mechanical ,
    S.of(context).civil ,
  ];
     } 
  List<String> getcandidateCriteriaOptions(BuildContext context) {
    return [
   S.of(context).DriversLicense,
    S.of(context).Teamwork,
    S.of(context).ProblemSolvingAbility,
    S.of(context).CreativityandInnovation,
    S.of(context).CertifiedSpecialist,
   
  ];
  }
  List<String> getlanguages(BuildContext context) {
    return [
      S.of(context).english,
      S.of(context).german,
      S.of(context).french,
      S.of(context).spanish,
      S.of(context).italian,
      S.of(context).russian,
      S.of(context).chinese,
      S.of(context).japanese,
      S.of(context).arabic,
      S.of(context).portuguese,
      S.of(context).dutch,
      S.of(context).turkish,
      S.of(context).korean,
      S.of(context).polish,
      S.of(context).ukrainian,
      S.of(context).greek,
      S.of(context).swedish,
      S.of(context).norwegian,
      S.of(context).danish,
      S.of(context).finnish,
      S.of(context).czech,
      S.of(context).slovak,
      S.of(context).hungarian,
      S.of(context).romanian,
      S.of(context).bulgarian,
      S.of(context).serbian,
      S.of(context).croatian,
      S.of(context).bosnian,
      S.of(context).albanian,
      S.of(context).macedonian,
      S.of(context).slovenian,
      S.of(context).estonian,
      S.of(context).latvian,
      S.of(context).lithuanian,
      S.of(context).belarusian,
      S.of(context).georgian,
      S.of(context).armenian,
      S.of(context).azerbaijani,
      S.of(context).kazakh,
      S.of(context).uzbek,
      S.of(context).turkmen,
      S.of(context).tajik,
      S.of(context).kyrgyz,
      S.of(context).mongolian,
      S.of(context).tibetan,
      S.of(context).nepali,
      S.of(context).bengali,
      S.of(context).punjabi,
      S.of(context).gujarati,
      S.of(context).marathi,
      S.of(context).telugu,
      S.of(context).urdu,
      S.of(context).hindi,
      S.of(context).sinhala,
      S.of(context).burmese,
      S.of(context).khmer,
      S.of(context).lao,
      S.of(context).vietnamese,
      S.of(context).thai,
      S.of(context).malay,
      S.of(context).indonesian,
      S.of(context).filipino,
      S.of(context).swahili,
      S.of(context).hausa,
      S.of(context).yoruba,
      S.of(context).igbo,
      S.of(context).zulu,
      S.of(context).xhosa,
      S.of(context).afrikaans,
   


    ];
  } 
    

  
  
  List<String> getlanguageLevels(BuildContext context) {
    return [
      S.of(context).Beginner, 
      S.of(context).Intermediate, 
      S.of(context).Advanced, 
      S.of(context).NativeLanguage, 
      S.of(context).None
      ];
  } 
 
  List<String> getmilitaryStatusOptions(BuildContext context) {
    return [
      S.of(context).Delayed, 
      S.of(context).Completed,
      S.of(context).Exempt
      ];
  } 
   
  List<String> getExperianceLevels(BuildContext context) {
    return [
      S.of(context).newgraduate, 
      S.of(context).toYearsofExperience, 
      S.of(context).fiveYearsofExperience, 
      S.of(context).CertifiedSpecialist, 
      S.of(context).None
      ];
  } 

  // Form validation states
  bool isTitleValid = true;
  bool isDescriptionValid = true;
  bool isCompanyNameValid = true;
  bool isLocationValid = true;
  bool isContactInfoValid = true;
  bool isWorkTypeValid = true;
  bool isPositionLevelValid = true;
  bool isDepartmentValid = true;
  bool isExperienceLevelValid = true;
  bool isLanguageValid = true;
  bool isLanguageLevelValid = true;
  bool isMilitaryStatusValid = true;


  void _postJob() async {
    setState(() {
      isTitleValid = titleController.text.isNotEmpty;
      isCompanyNameValid = companyNameController.text.isNotEmpty;
      isLocationValid = locationController.text.isNotEmpty;
      isContactInfoValid = contactInfoController.text.isNotEmpty;
      isWorkTypeValid = selectedWorkType != null;
      isPositionLevelValid = selectedPositionLevel != null;
      isDepartmentValid = selectedDepartment != null;
    });

    if (!isTitleValid || !isCompanyNameValid || 
        !isLocationValid || !isContactInfoValid || !isWorkTypeValid || 
        !isPositionLevelValid || !isDepartmentValid) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(S.of(context).Pleasefillinalltherequiredfields)));
      return;
    }

    Job job = Job(
      title: titleController.text,
      description: descriptionController.text,
      companyName: companyNameController.text,
      location: locationController.text,
      userId: authService.currentUser!.uid,
      workType: selectedWorkType ?? '',
      positionLevel: selectedPositionLevel ?? '',
      department: selectedDepartment ?? '',
      candidateCriteria: selectedCandidateCriteria,
      contactEmail: contactInfoController.text,
    );

    if (selectedCandidateCriteria.contains(S.of(context).foreignlanguage)) {
      job.candidateCriteria.add('${S.of(context).language} $selectedLanguage, ${S.of(context).level} $selectedLanguageLevel');
    }

    if (selectedCandidateCriteria.contains(S.of(context).MilitaryServiceStatus)) {
      job.candidateCriteria.add('${S.of(context).Militaryservice} $selectedMilitaryStatus');
    }
    if (selectedExperienceLevel != null) {
      job.candidateCriteria.add('${S.of(context).experience} $selectedExperienceLevel');
    }

    await jobService.addJob(job);
    titleController.clear();
    descriptionController.clear();
    companyNameController.clear();
    locationController.clear();
    contactInfoController.clear();
    selectedWorkType = null;
    selectedPositionLevel = null;
    selectedDepartment = null;
    selectedCandidateCriteria.clear();
    selectedLanguage = null;
    selectedLanguageLevel = null;
    selectedMilitaryStatus = null;
    selectedExperienceLevel = null;

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(S.of(context).Theadwassuccessfullyadded)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).PostaJobAd),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildTextField(titleController, S.of(context).JobTitle, Icons.title, isTitleValid),
            _buildTextField(descriptionController, S.of(context).description, Icons.description, isDescriptionValid, maxLines: 3),
            _buildTextField(companyNameController, S.of(context).companyname, Icons.business, isCompanyNameValid),
            _buildTextField(locationController, S.of(context).location, Icons.location_on, isLocationValid),
            _buildTextField(contactInfoController, S.of(context).ContactInformation, Icons.contact_mail, isContactInfoValid),
            _buildDropdown<String>(
              selectedDepartment, S.of(context).department, getdepartments(context), isDepartmentValid,
              (newValue) { setState(() { selectedDepartment = newValue; }); }
            ),
            _buildDropdown<String>(
              selectedWorkType, S.of(context).ModeofOperation, getWorkTypes(context), isWorkTypeValid, 
              (newValue) { setState(() { selectedWorkType = newValue; }); }
            ),
            _buildDropdown<String>(
              selectedPositionLevel, S.of(context).positionlevel, getpozitionlevel(context), isPositionLevelValid,
              (newValue) { setState(() { selectedPositionLevel = newValue; }); }
            ),
            _buildDropdown<String>(
              selectedExperienceLevel, S.of(context).experiancelevel, getExperianceLevels(context), isExperienceLevelValid,
              (newValue) { setState(() { selectedExperienceLevel = newValue; }); }
            ),
            _buildDropdown<String>(
              selectedLanguage, S.of(context).foreignlanguage, getlanguages(context), true,
              (newValue) { setState(() { selectedLanguage = newValue; }); }
            ),
            _buildDropdown<String>(
              selectedLanguageLevel, S.of(context).languagelevel, getlanguageLevels(context), true,
              (newValue) { setState(() { selectedLanguageLevel = newValue; }); }
            ),
            _buildDropdown<String>(
              selectedMilitaryStatus, S.of(context).MilitaryServiceStatus, getmilitaryStatusOptions(context), true,
              (newValue) { setState(() { selectedMilitaryStatus = newValue; }); }
            ),
            

            // Aday Kriterleri Seçimi
            Wrap(
              spacing: 8.0,
              children: getcandidateCriteriaOptions(context).map((String criteria) {
                bool isDisabled = (criteria == '2+ Yıl Deneyim' && selectedCandidateCriteria.contains('5+ Yıl Deneyim')) ||
                                   (criteria == '5+ Yıl Deneyim' && selectedCandidateCriteria.contains('2+ Yıl Deneyim'))|| 
                                   (criteria == 'Yeni Mezun' && selectedCandidateCriteria.contains('5+ Yıl Deneyim'))|| 
                                   (criteria == 'Yeni Mezun' && selectedCandidateCriteria.contains('2+ Yıl Deneyim'))|| 
                                   (criteria == '5+ Yıl Deneyim' && selectedCandidateCriteria.contains('Yeni Mezun'))|| 
                                   (criteria == '2+ Yıl Deneyim' && selectedCandidateCriteria.contains('Yeni Mezun'))|| 
                                   (criteria == 'Yeni Mezun' && selectedCandidateCriteria.contains('Sertifikalı Uzman'))|| 
                                   (criteria == 'Sertifikalı Uzman' && selectedCandidateCriteria.contains('Yeni Mezun'))|| 
                                   (criteria == '2+ Yıl Deneyim' && selectedCandidateCriteria.contains('Sertifikalı Uzman'))|| 
                                   (criteria == 'Sertifikalı Uzman' && selectedCandidateCriteria.contains('2+ Yıl Deneyim'));

                return ChoiceChip(
                  label: Text(criteria),
                  selected: selectedCandidateCriteria.contains(criteria),
                  onSelected: isDisabled ? null : (bool selected) {
                    setState(() {
                      if (selected) {
                        selectedCandidateCriteria.add(criteria);
                      } else {
                        selectedCandidateCriteria.remove(criteria);
                      }
                    });
                  },
                  selectedColor: Colors.blueAccent,
                  labelStyle: TextStyle(color: isDisabled ? Colors.black : Colors.black),
                );
              }).toList(),
            ),
            
            ElevatedButton(
              onPressed: _postJob,
              child: Text(S.of(context).PublishtheAd),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, IconData icon, bool isValid, {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          errorText: isValid ? null : S.of(context).Thisareaismandatory,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildDropdown<T>(
    T? value, String label, List<String> items, bool isValid, 
    void Function(T?) onChanged,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          errorText: isValid ? null : S.of(context).Thisareaismandatory,
          border: OutlineInputBorder(),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<T>(
            isExpanded: true,
            value: value,
            hint: Text(S.of(context).CHOOSE),
            onChanged: onChanged,
            items: items.map((item) => DropdownMenuItem<T>(
              value: item as T,
              child: Text(item),
            )).toList(),
          ),
        ),
      ),
    );
  }
}
