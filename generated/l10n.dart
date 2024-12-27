// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `WELCOME!`
  String get welcome {
    return Intl.message(
      'WELCOME!',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `hello!`
  String get hello {
    return Intl.message(
      'hello!',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `goodbye!`
  String get goodbye {
    return Intl.message(
      'goodbye!',
      name: 'goodbye',
      desc: '',
      args: [],
    );
  }

  /// `settings`
  String get settings {
    return Intl.message(
      'settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `language`
  String get language {
    return Intl.message(
      'language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `theme`
  String get theme {
    return Intl.message(
      'theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `dark`
  String get dark {
    return Intl.message(
      'dark',
      name: 'dark',
      desc: '',
      args: [],
    );
  }

  /// `light`
  String get light {
    return Intl.message(
      'light',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `system`
  String get system {
    return Intl.message(
      'system',
      name: 'system',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get email {
    return Intl.message(
      'E-mail',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Login With Google`
  String get logingoogle {
    return Intl.message(
      'Login With Google',
      name: 'logingoogle',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Man`
  String get man {
    return Intl.message(
      'Man',
      name: 'man',
      desc: '',
      args: [],
    );
  }

  /// `Woman`
  String get woman {
    return Intl.message(
      'Woman',
      name: 'woman',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Gender Select`
  String get genderselect {
    return Intl.message(
      'Gender Select',
      name: 'genderselect',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid age`
  String get agesos {
    return Intl.message(
      'Enter a valid age',
      name: 'agesos',
      desc: '',
      args: [],
    );
  }

  /// `Age cannot be empty`
  String get agesos1 {
    return Intl.message(
      'Age cannot be empty',
      name: 'agesos1',
      desc: '',
      args: [],
    );
  }

  /// `Password cannot be empty`
  String get passwordsos {
    return Intl.message(
      'Password cannot be empty',
      name: 'passwordsos',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get passwordsos1 {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'passwordsos1',
      desc: '',
      args: [],
    );
  }

  /// `E-mail cannot be empty`
  String get emailsos {
    return Intl.message(
      'E-mail cannot be empty',
      name: 'emailsos',
      desc: '',
      args: [],
    );
  }

  /// `Username cannot be empty`
  String get usernameSos {
    return Intl.message(
      'Username cannot be empty',
      name: 'usernameSos',
      desc: '',
      args: [],
    );
  }

  /// `Registration failed, please check your information.`
  String get savesos {
    return Intl.message(
      'Registration failed, please check your information.',
      name: 'savesos',
      desc: '',
      args: [],
    );
  }

  /// `Job List`
  String get ads {
    return Intl.message(
      'Job List',
      name: 'ads',
      desc: '',
      args: [],
    );
  }

  /// `Post ad`
  String get jobad {
    return Intl.message(
      'Post ad',
      name: 'jobad',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Job Postings`
  String get joblist {
    return Intl.message(
      'Job Postings',
      name: 'joblist',
      desc: '',
      args: [],
    );
  }

  /// `No job ads were found.`
  String get jobadssos {
    return Intl.message(
      'No job ads were found.',
      name: 'jobadssos',
      desc: '',
      args: [],
    );
  }

  /// `job id not found.`
  String get jobadssos1 {
    return Intl.message(
      'job id not found.',
      name: 'jobadssos1',
      desc: '',
      args: [],
    );
  }

  /// `Criteria :`
  String get criteria {
    return Intl.message(
      'Criteria :',
      name: 'criteria',
      desc: '',
      args: [],
    );
  }

  /// `Job Detail`
  String get jobdetail {
    return Intl.message(
      'Job Detail',
      name: 'jobdetail',
      desc: '',
      args: [],
    );
  }

  /// `Company Name`
  String get companyname {
    return Intl.message(
      'Company Name',
      name: 'companyname',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Work Type`
  String get worktype {
    return Intl.message(
      'Work Type',
      name: 'worktype',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Position Level`
  String get positionlevel {
    return Intl.message(
      'Position Level',
      name: 'positionlevel',
      desc: '',
      args: [],
    );
  }

  /// `Department`
  String get department {
    return Intl.message(
      'Department',
      name: 'department',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred:`
  String get jobdetailsos {
    return Intl.message(
      'An error occurred:',
      name: 'jobdetailsos',
      desc: '',
      args: [],
    );
  }

  /// `No job found.`
  String get jobdetailsos1 {
    return Intl.message(
      'No job found.',
      name: 'jobdetailsos1',
      desc: '',
      args: [],
    );
  }

  /// `Candidate Criteria:`
  String get CandidateCriteria {
    return Intl.message(
      'Candidate Criteria:',
      name: 'CandidateCriteria',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Full Time`
  String get fultime {
    return Intl.message(
      'Full Time',
      name: 'fultime',
      desc: '',
      args: [],
    );
  }

  /// `Part Time`
  String get parttime {
    return Intl.message(
      'Part Time',
      name: 'parttime',
      desc: '',
      args: [],
    );
  }

  /// `Intern`
  String get intern {
    return Intl.message(
      'Intern',
      name: 'intern',
      desc: '',
      args: [],
    );
  }

  /// `Remote`
  String get remote {
    return Intl.message(
      'Remote',
      name: 'remote',
      desc: '',
      args: [],
    );
  }

  /// `Contract`
  String get contract {
    return Intl.message(
      'Contract',
      name: 'contract',
      desc: '',
      args: [],
    );
  }

  /// `Temporary`
  String get temporary {
    return Intl.message(
      'Temporary',
      name: 'temporary',
      desc: '',
      args: [],
    );
  }

  /// `Freelance`
  String get freelance {
    return Intl.message(
      'Freelance',
      name: 'freelance',
      desc: '',
      args: [],
    );
  }

  /// `Volunteer`
  String get volunteer {
    return Intl.message(
      'Volunteer',
      name: 'volunteer',
      desc: '',
      args: [],
    );
  }

  /// `Periodic`
  String get periodic {
    return Intl.message(
      'Periodic',
      name: 'periodic',
      desc: '',
      args: [],
    );
  }

  /// `Project Based`
  String get projectbased {
    return Intl.message(
      'Project Based',
      name: 'projectbased',
      desc: '',
      args: [],
    );
  }

  /// `Seasonal`
  String get seasonal {
    return Intl.message(
      'Seasonal',
      name: 'seasonal',
      desc: '',
      args: [],
    );
  }

  /// `New Graduate`
  String get newgraduate {
    return Intl.message(
      'New Graduate',
      name: 'newgraduate',
      desc: '',
      args: [],
    );
  }

  /// `Expert`
  String get expert {
    return Intl.message(
      'Expert',
      name: 'expert',
      desc: '',
      args: [],
    );
  }

  /// `Senior Expert`
  String get seniorexpert {
    return Intl.message(
      'Senior Expert',
      name: 'seniorexpert',
      desc: '',
      args: [],
    );
  }

  /// `Manager`
  String get manager {
    return Intl.message(
      'Manager',
      name: 'manager',
      desc: '',
      args: [],
    );
  }

  /// `Senior Manager`
  String get seniormanager {
    return Intl.message(
      'Senior Manager',
      name: 'seniormanager',
      desc: '',
      args: [],
    );
  }

  /// `Director`
  String get director {
    return Intl.message(
      'Director',
      name: 'director',
      desc: '',
      args: [],
    );
  }

  /// `Senior Director`
  String get seniordirector {
    return Intl.message(
      'Senior Director',
      name: 'seniordirector',
      desc: '',
      args: [],
    );
  }

  /// `CEO`
  String get ceo {
    return Intl.message(
      'CEO',
      name: 'ceo',
      desc: '',
      args: [],
    );
  }

  /// `Software`
  String get software {
    return Intl.message(
      'Software',
      name: 'software',
      desc: '',
      args: [],
    );
  }

  /// `Harware`
  String get hardware {
    return Intl.message(
      'Harware',
      name: 'hardware',
      desc: '',
      args: [],
    );
  }

  /// `Network`
  String get network {
    return Intl.message(
      'Network',
      name: 'network',
      desc: '',
      args: [],
    );
  }

  /// `Database`
  String get database {
    return Intl.message(
      'Database',
      name: 'database',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get security {
    return Intl.message(
      'Security',
      name: 'security',
      desc: '',
      args: [],
    );
  }

  /// `Web`
  String get web {
    return Intl.message(
      'Web',
      name: 'web',
      desc: '',
      args: [],
    );
  }

  /// `Mobile`
  String get mobile {
    return Intl.message(
      'Mobile',
      name: 'mobile',
      desc: '',
      args: [],
    );
  }

  /// `Game`
  String get game {
    return Intl.message(
      'Game',
      name: 'game',
      desc: '',
      args: [],
    );
  }

  /// `IoT`
  String get iot {
    return Intl.message(
      'IoT',
      name: 'iot',
      desc: '',
      args: [],
    );
  }

  /// `Ai`
  String get ai {
    return Intl.message(
      'Ai',
      name: 'ai',
      desc: '',
      args: [],
    );
  }

  /// `Big Data`
  String get bigdata {
    return Intl.message(
      'Big Data',
      name: 'bigdata',
      desc: '',
      args: [],
    );
  }

  /// `Cloud`
  String get cloud {
    return Intl.message(
      'Cloud',
      name: 'cloud',
      desc: '',
      args: [],
    );
  }

  /// `DevOps`
  String get devops {
    return Intl.message(
      'DevOps',
      name: 'devops',
      desc: '',
      args: [],
    );
  }

  /// `ERP`
  String get erp {
    return Intl.message(
      'ERP',
      name: 'erp',
      desc: '',
      args: [],
    );
  }

  /// `Marketing`
  String get marketing {
    return Intl.message(
      'Marketing',
      name: 'marketing',
      desc: '',
      args: [],
    );
  }

  /// `Sales`
  String get sales {
    return Intl.message(
      'Sales',
      name: 'sales',
      desc: '',
      args: [],
    );
  }

  /// `human resources`
  String get hr {
    return Intl.message(
      'human resources',
      name: 'hr',
      desc: '',
      args: [],
    );
  }

  /// `Finance`
  String get finance {
    return Intl.message(
      'Finance',
      name: 'finance',
      desc: '',
      args: [],
    );
  }

  /// `Accounting`
  String get accounting {
    return Intl.message(
      'Accounting',
      name: 'accounting',
      desc: '',
      args: [],
    );
  }

  /// `Procurement`
  String get procurement {
    return Intl.message(
      'Procurement',
      name: 'procurement',
      desc: '',
      args: [],
    );
  }

  /// `Logistics`
  String get logistics {
    return Intl.message(
      'Logistics',
      name: 'logistics',
      desc: '',
      args: [],
    );
  }

  /// `Production`
  String get production {
    return Intl.message(
      'Production',
      name: 'production',
      desc: '',
      args: [],
    );
  }

  /// `Quality`
  String get quality {
    return Intl.message(
      'Quality',
      name: 'quality',
      desc: '',
      args: [],
    );
  }

  /// `Maintenance`
  String get maintenance {
    return Intl.message(
      'Maintenance',
      name: 'maintenance',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get health {
    return Intl.message(
      'Health',
      name: 'health',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get education {
    return Intl.message(
      'Education',
      name: 'education',
      desc: '',
      args: [],
    );
  }

  /// `Law`
  String get law {
    return Intl.message(
      'Law',
      name: 'law',
      desc: '',
      args: [],
    );
  }

  /// `Architecture`
  String get architecture {
    return Intl.message(
      'Architecture',
      name: 'architecture',
      desc: '',
      args: [],
    );
  }

  /// `Design`
  String get design {
    return Intl.message(
      'Design',
      name: 'design',
      desc: '',
      args: [],
    );
  }

  /// `Art`
  String get art {
    return Intl.message(
      'Art',
      name: 'art',
      desc: '',
      args: [],
    );
  }

  /// `Music`
  String get music {
    return Intl.message(
      'Music',
      name: 'music',
      desc: '',
      args: [],
    );
  }

  /// `Literature`
  String get literature {
    return Intl.message(
      'Literature',
      name: 'literature',
      desc: '',
      args: [],
    );
  }

  /// `Mechanical`
  String get mechanical {
    return Intl.message(
      'Mechanical',
      name: 'mechanical',
      desc: '',
      args: [],
    );
  }

  /// `Electrical`
  String get electrical {
    return Intl.message(
      'Electrical',
      name: 'electrical',
      desc: '',
      args: [],
    );
  }

  /// `Civil`
  String get civil {
    return Intl.message(
      'Civil',
      name: 'civil',
      desc: '',
      args: [],
    );
  }

  /// `Mecatronics Engineering`
  String get mecatronicsengineering {
    return Intl.message(
      'Mecatronics Engineering',
      name: 'mecatronicsengineering',
      desc: '',
      args: [],
    );
  }

  /// `Environmental Engineering`
  String get environmentalengineering {
    return Intl.message(
      'Environmental Engineering',
      name: 'environmentalengineering',
      desc: '',
      args: [],
    );
  }

  /// `Biomedical Engineering`
  String get biomedicalengineering {
    return Intl.message(
      'Biomedical Engineering',
      name: 'biomedicalengineering',
      desc: '',
      args: [],
    );
  }

  /// `Aerospace Engineering`
  String get aerospaceengineering {
    return Intl.message(
      'Aerospace Engineering',
      name: 'aerospaceengineering',
      desc: '',
      args: [],
    );
  }

  /// `Industrial Engineering`
  String get industrialengineering {
    return Intl.message(
      'Industrial Engineering',
      name: 'industrialengineering',
      desc: '',
      args: [],
    );
  }

  /// `Chemical Engineering`
  String get chemicalengineering {
    return Intl.message(
      'Chemical Engineering',
      name: 'chemicalengineering',
      desc: '',
      args: [],
    );
  }

  /// `Food Engineering`
  String get foodengineering {
    return Intl.message(
      'Food Engineering',
      name: 'foodengineering',
      desc: '',
      args: [],
    );
  }

  /// `Textile Engineering`
  String get textileengineering {
    return Intl.message(
      'Textile Engineering',
      name: 'textileengineering',
      desc: '',
      args: [],
    );
  }

  /// `Mining Engineering`
  String get miningengineering {
    return Intl.message(
      'Mining Engineering',
      name: 'miningengineering',
      desc: '',
      args: [],
    );
  }

  /// `Geological Engineering`
  String get geologicalengineering {
    return Intl.message(
      'Geological Engineering',
      name: 'geologicalengineering',
      desc: '',
      args: [],
    );
  }

  /// `Petroleum Engineering`
  String get petroleumengineering {
    return Intl.message(
      'Petroleum Engineering',
      name: 'petroleumengineering',
      desc: '',
      args: [],
    );
  }

  /// `Metallurgical Engineering`
  String get metallurgicalengineering {
    return Intl.message(
      'Metallurgical Engineering',
      name: 'metallurgicalengineering',
      desc: '',
      args: [],
    );
  }

  /// `Automotive Engineering`
  String get automotiveengineering {
    return Intl.message(
      'Automotive Engineering',
      name: 'automotiveengineering',
      desc: '',
      args: [],
    );
  }

  /// `Nuclear Engineering`
  String get nuclearengineering {
    return Intl.message(
      'Nuclear Engineering',
      name: 'nuclearengineering',
      desc: '',
      args: [],
    );
  }

  /// `Marine Engineering`
  String get marineengineering {
    return Intl.message(
      'Marine Engineering',
      name: 'marineengineering',
      desc: '',
      args: [],
    );
  }

  /// `Architectural Engineering`
  String get architecturalengineering {
    return Intl.message(
      'Architectural Engineering',
      name: 'architecturalengineering',
      desc: '',
      args: [],
    );
  }

  /// `Biotechnology Engineering`
  String get biotechnologyengineering {
    return Intl.message(
      'Biotechnology Engineering',
      name: 'biotechnologyengineering',
      desc: '',
      args: [],
    );
  }

  /// `Nanotechnology Engineering`
  String get nanotechnologyengineering {
    return Intl.message(
      'Nanotechnology Engineering',
      name: 'nanotechnologyengineering',
      desc: '',
      args: [],
    );
  }

  /// `Robotics Engineering`
  String get roboticsengineering {
    return Intl.message(
      'Robotics Engineering',
      name: 'roboticsengineering',
      desc: '',
      args: [],
    );
  }

  /// `Mechatronics Engineering`
  String get mechatronicsengineering {
    return Intl.message(
      'Mechatronics Engineering',
      name: 'mechatronicsengineering',
      desc: '',
      args: [],
    );
  }

  /// `Systems Engineering`
  String get systemsengineering {
    return Intl.message(
      'Systems Engineering',
      name: 'systemsengineering',
      desc: '',
      args: [],
    );
  }

  /// `Computer Engineering`
  String get computerengineering {
    return Intl.message(
      'Computer Engineering',
      name: 'computerengineering',
      desc: '',
      args: [],
    );
  }

  /// `Telecommunication Engineering`
  String get telecommunicationengineering {
    return Intl.message(
      'Telecommunication Engineering',
      name: 'telecommunicationengineering',
      desc: '',
      args: [],
    );
  }

  /// `Control Engineering`
  String get controlengineering {
    return Intl.message(
      'Control Engineering',
      name: 'controlengineering',
      desc: '',
      args: [],
    );
  }

  /// `Electronic Engineering`
  String get electronicengineering {
    return Intl.message(
      'Electronic Engineering',
      name: 'electronicengineering',
      desc: '',
      args: [],
    );
  }

  /// `Software Engineering`
  String get softwareengineering {
    return Intl.message(
      'Software Engineering',
      name: 'softwareengineering',
      desc: '',
      args: [],
    );
  }

  /// `Electrical Engineering`
  String get electricalengineering {
    return Intl.message(
      'Electrical Engineering',
      name: 'electricalengineering',
      desc: '',
      args: [],
    );
  }

  /// `Mechanical Engineering`
  String get mechanicalengineering {
    return Intl.message(
      'Mechanical Engineering',
      name: 'mechanicalengineering',
      desc: '',
      args: [],
    );
  }

  /// `Civil Engineering`
  String get civilengineering {
    return Intl.message(
      'Civil Engineering',
      name: 'civilengineering',
      desc: '',
      args: [],
    );
  }

  /// `Certified Specialist`
  String get CertifiedSpecialist {
    return Intl.message(
      'Certified Specialist',
      name: 'CertifiedSpecialist',
      desc: '',
      args: [],
    );
  }

  /// `Driver's License`
  String get DriversLicense {
    return Intl.message(
      'Driver\'s License',
      name: 'DriversLicense',
      desc: '',
      args: [],
    );
  }

  /// `Teamwork`
  String get Teamwork {
    return Intl.message(
      'Teamwork',
      name: 'Teamwork',
      desc: '',
      args: [],
    );
  }

  /// `Problem Solving Ability`
  String get ProblemSolvingAbility {
    return Intl.message(
      'Problem Solving Ability',
      name: 'ProblemSolvingAbility',
      desc: '',
      args: [],
    );
  }

  /// `Creativity and Innovation`
  String get CreativityandInnovation {
    return Intl.message(
      'Creativity and Innovation',
      name: 'CreativityandInnovation',
      desc: '',
      args: [],
    );
  }

  /// `Beginner`
  String get Beginner {
    return Intl.message(
      'Beginner',
      name: 'Beginner',
      desc: '',
      args: [],
    );
  }

  /// `Intermediate`
  String get Intermediate {
    return Intl.message(
      'Intermediate',
      name: 'Intermediate',
      desc: '',
      args: [],
    );
  }

  /// `Advanced`
  String get Advanced {
    return Intl.message(
      'Advanced',
      name: 'Advanced',
      desc: '',
      args: [],
    );
  }

  /// `Native Language`
  String get NativeLanguage {
    return Intl.message(
      'Native Language',
      name: 'NativeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get None {
    return Intl.message(
      'None',
      name: 'None',
      desc: '',
      args: [],
    );
  }

  /// `Delayed`
  String get Delayed {
    return Intl.message(
      'Delayed',
      name: 'Delayed',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get Completed {
    return Intl.message(
      'Completed',
      name: 'Completed',
      desc: '',
      args: [],
    );
  }

  /// `Exempt`
  String get Exempt {
    return Intl.message(
      'Exempt',
      name: 'Exempt',
      desc: '',
      args: [],
    );
  }

  /// `2+ Years of Experience`
  String get toYearsofExperience {
    return Intl.message(
      '2+ Years of Experience',
      name: 'toYearsofExperience',
      desc: '',
      args: [],
    );
  }

  /// `5+ Years of Experience`
  String get fiveYearsofExperience {
    return Intl.message(
      '5+ Years of Experience',
      name: 'fiveYearsofExperience',
      desc: '',
      args: [],
    );
  }

  /// `Job Title`
  String get JobTitle {
    return Intl.message(
      'Job Title',
      name: 'JobTitle',
      desc: '',
      args: [],
    );
  }

  /// `Contact Information (E-mail)`
  String get ContactInformation {
    return Intl.message(
      'Contact Information (E-mail)',
      name: 'ContactInformation',
      desc: '',
      args: [],
    );
  }

  /// `Mode of Operation`
  String get ModeofOperation {
    return Intl.message(
      'Mode of Operation',
      name: 'ModeofOperation',
      desc: '',
      args: [],
    );
  }

  /// `Experience Level`
  String get experiancelevel {
    return Intl.message(
      'Experience Level',
      name: 'experiancelevel',
      desc: '',
      args: [],
    );
  }

  /// `Foreign Language`
  String get foreignlanguage {
    return Intl.message(
      'Foreign Language',
      name: 'foreignlanguage',
      desc: '',
      args: [],
    );
  }

  /// `Language Level`
  String get languagelevel {
    return Intl.message(
      'Language Level',
      name: 'languagelevel',
      desc: '',
      args: [],
    );
  }

  /// `Military Service Status`
  String get MilitaryServiceStatus {
    return Intl.message(
      'Military Service Status',
      name: 'MilitaryServiceStatus',
      desc: '',
      args: [],
    );
  }

  /// `CHOOSE`
  String get CHOOSE {
    return Intl.message(
      'CHOOSE',
      name: 'CHOOSE',
      desc: '',
      args: [],
    );
  }

  /// `Publish the Ad`
  String get PublishtheAd {
    return Intl.message(
      'Publish the Ad',
      name: 'PublishtheAd',
      desc: '',
      args: [],
    );
  }

  /// `This area is mandatory!`
  String get Thisareaismandatory {
    return Intl.message(
      'This area is mandatory!',
      name: 'Thisareaismandatory',
      desc: '',
      args: [],
    );
  }

  /// `Post a Job Ad`
  String get PostaJobAd {
    return Intl.message(
      'Post a Job Ad',
      name: 'PostaJobAd',
      desc: '',
      args: [],
    );
  }

  /// `The ad was successfully added.`
  String get Theadwassuccessfullyadded {
    return Intl.message(
      'The ad was successfully added.',
      name: 'Theadwassuccessfullyadded',
      desc: '',
      args: [],
    );
  }

  /// `Language:`
  String get LANGUAGE {
    return Intl.message(
      'Language:',
      name: 'LANGUAGE',
      desc: '',
      args: [],
    );
  }

  /// `Level`
  String get level {
    return Intl.message(
      'Level',
      name: 'level',
      desc: '',
      args: [],
    );
  }

  /// `Military Service:`
  String get Militaryservice {
    return Intl.message(
      'Military Service:',
      name: 'Militaryservice',
      desc: '',
      args: [],
    );
  }

  /// `Experience:`
  String get experience {
    return Intl.message(
      'Experience:',
      name: 'experience',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in all the required fields!`
  String get Pleasefillinalltherequiredfields {
    return Intl.message(
      'Please fill in all the required fields!',
      name: 'Pleasefillinalltherequiredfields',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Spanish`
  String get spanish {
    return Intl.message(
      'Spanish',
      name: 'spanish',
      desc: '',
      args: [],
    );
  }

  /// `French`
  String get french {
    return Intl.message(
      'French',
      name: 'french',
      desc: '',
      args: [],
    );
  }

  /// `German`
  String get german {
    return Intl.message(
      'German',
      name: 'german',
      desc: '',
      args: [],
    );
  }

  /// `Chinese`
  String get chinese {
    return Intl.message(
      'Chinese',
      name: 'chinese',
      desc: '',
      args: [],
    );
  }

  /// `Japanese`
  String get japanese {
    return Intl.message(
      'Japanese',
      name: 'japanese',
      desc: '',
      args: [],
    );
  }

  /// `Korean`
  String get korean {
    return Intl.message(
      'Korean',
      name: 'korean',
      desc: '',
      args: [],
    );
  }

  /// `Italian`
  String get italian {
    return Intl.message(
      'Italian',
      name: 'italian',
      desc: '',
      args: [],
    );
  }

  /// `Portuguese`
  String get portuguese {
    return Intl.message(
      'Portuguese',
      name: 'portuguese',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get russian {
    return Intl.message(
      'Russian',
      name: 'russian',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Hindi`
  String get hindi {
    return Intl.message(
      'Hindi',
      name: 'hindi',
      desc: '',
      args: [],
    );
  }

  /// `Bengali`
  String get bengali {
    return Intl.message(
      'Bengali',
      name: 'bengali',
      desc: '',
      args: [],
    );
  }

  /// `Urdu`
  String get urdu {
    return Intl.message(
      'Urdu',
      name: 'urdu',
      desc: '',
      args: [],
    );
  }

  /// `Turkish`
  String get turkish {
    return Intl.message(
      'Turkish',
      name: 'turkish',
      desc: '',
      args: [],
    );
  }

  /// `Dutch`
  String get dutch {
    return Intl.message(
      'Dutch',
      name: 'dutch',
      desc: '',
      args: [],
    );
  }

  /// `Greek`
  String get greek {
    return Intl.message(
      'Greek',
      name: 'greek',
      desc: '',
      args: [],
    );
  }

  /// `Swedish`
  String get swedish {
    return Intl.message(
      'Swedish',
      name: 'swedish',
      desc: '',
      args: [],
    );
  }

  /// `Norwegian`
  String get norwegian {
    return Intl.message(
      'Norwegian',
      name: 'norwegian',
      desc: '',
      args: [],
    );
  }

  /// `Danish`
  String get danish {
    return Intl.message(
      'Danish',
      name: 'danish',
      desc: '',
      args: [],
    );
  }

  /// `Finnish`
  String get finnish {
    return Intl.message(
      'Finnish',
      name: 'finnish',
      desc: '',
      args: [],
    );
  }

  /// `Polish`
  String get polish {
    return Intl.message(
      'Polish',
      name: 'polish',
      desc: '',
      args: [],
    );
  }

  /// `Czech`
  String get czech {
    return Intl.message(
      'Czech',
      name: 'czech',
      desc: '',
      args: [],
    );
  }

  /// `Hungarian`
  String get hungarian {
    return Intl.message(
      'Hungarian',
      name: 'hungarian',
      desc: '',
      args: [],
    );
  }

  /// `Romanian`
  String get romanian {
    return Intl.message(
      'Romanian',
      name: 'romanian',
      desc: '',
      args: [],
    );
  }

  /// `Bulgarian`
  String get bulgarian {
    return Intl.message(
      'Bulgarian',
      name: 'bulgarian',
      desc: '',
      args: [],
    );
  }

  /// `Serbian`
  String get serbian {
    return Intl.message(
      'Serbian',
      name: 'serbian',
      desc: '',
      args: [],
    );
  }

  /// `Croatian`
  String get croatian {
    return Intl.message(
      'Croatian',
      name: 'croatian',
      desc: '',
      args: [],
    );
  }

  /// `Slovak`
  String get slovak {
    return Intl.message(
      'Slovak',
      name: 'slovak',
      desc: '',
      args: [],
    );
  }

  /// `Slovenian`
  String get slovenian {
    return Intl.message(
      'Slovenian',
      name: 'slovenian',
      desc: '',
      args: [],
    );
  }

  /// `Hebrew`
  String get hebrew {
    return Intl.message(
      'Hebrew',
      name: 'hebrew',
      desc: '',
      args: [],
    );
  }

  /// `Thai`
  String get thai {
    return Intl.message(
      'Thai',
      name: 'thai',
      desc: '',
      args: [],
    );
  }

  /// `Vietnamese`
  String get vietnamese {
    return Intl.message(
      'Vietnamese',
      name: 'vietnamese',
      desc: '',
      args: [],
    );
  }

  /// `Indonesian`
  String get indonesian {
    return Intl.message(
      'Indonesian',
      name: 'indonesian',
      desc: '',
      args: [],
    );
  }

  /// `Malay`
  String get malay {
    return Intl.message(
      'Malay',
      name: 'malay',
      desc: '',
      args: [],
    );
  }

  /// `Filipino`
  String get filipino {
    return Intl.message(
      'Filipino',
      name: 'filipino',
      desc: '',
      args: [],
    );
  }

  /// `Swahili`
  String get swahili {
    return Intl.message(
      'Swahili',
      name: 'swahili',
      desc: '',
      args: [],
    );
  }

  /// `Zulu`
  String get zulu {
    return Intl.message(
      'Zulu',
      name: 'zulu',
      desc: '',
      args: [],
    );
  }

  /// `Xhosa`
  String get xhosa {
    return Intl.message(
      'Xhosa',
      name: 'xhosa',
      desc: '',
      args: [],
    );
  }

  /// `Afrikaans`
  String get afrikaans {
    return Intl.message(
      'Afrikaans',
      name: 'afrikaans',
      desc: '',
      args: [],
    );
  }

  /// `Amharic`
  String get amharic {
    return Intl.message(
      'Amharic',
      name: 'amharic',
      desc: '',
      args: [],
    );
  }

  /// `Somali`
  String get somali {
    return Intl.message(
      'Somali',
      name: 'somali',
      desc: '',
      args: [],
    );
  }

  /// `Hausa`
  String get hausa {
    return Intl.message(
      'Hausa',
      name: 'hausa',
      desc: '',
      args: [],
    );
  }

  /// `Igbo`
  String get igbo {
    return Intl.message(
      'Igbo',
      name: 'igbo',
      desc: '',
      args: [],
    );
  }

  /// `Yoruba`
  String get yoruba {
    return Intl.message(
      'Yoruba',
      name: 'yoruba',
      desc: '',
      args: [],
    );
  }

  /// `Tamil`
  String get tamil {
    return Intl.message(
      'Tamil',
      name: 'tamil',
      desc: '',
      args: [],
    );
  }

  /// `Telugu`
  String get telugu {
    return Intl.message(
      'Telugu',
      name: 'telugu',
      desc: '',
      args: [],
    );
  }

  /// `Marathi`
  String get marathi {
    return Intl.message(
      'Marathi',
      name: 'marathi',
      desc: '',
      args: [],
    );
  }

  /// `Gujarati`
  String get gujarati {
    return Intl.message(
      'Gujarati',
      name: 'gujarati',
      desc: '',
      args: [],
    );
  }

  /// `Kannada`
  String get kannada {
    return Intl.message(
      'Kannada',
      name: 'kannada',
      desc: '',
      args: [],
    );
  }

  /// `Malayalam`
  String get malayalam {
    return Intl.message(
      'Malayalam',
      name: 'malayalam',
      desc: '',
      args: [],
    );
  }

  /// `Punjabi`
  String get punjabi {
    return Intl.message(
      'Punjabi',
      name: 'punjabi',
      desc: '',
      args: [],
    );
  }

  /// `Sinhala`
  String get sinhala {
    return Intl.message(
      'Sinhala',
      name: 'sinhala',
      desc: '',
      args: [],
    );
  }

  /// `Nepali`
  String get nepali {
    return Intl.message(
      'Nepali',
      name: 'nepali',
      desc: '',
      args: [],
    );
  }

  /// `Burmese`
  String get burmese {
    return Intl.message(
      'Burmese',
      name: 'burmese',
      desc: '',
      args: [],
    );
  }

  /// `Khmer`
  String get khmer {
    return Intl.message(
      'Khmer',
      name: 'khmer',
      desc: '',
      args: [],
    );
  }

  /// `Lao`
  String get lao {
    return Intl.message(
      'Lao',
      name: 'lao',
      desc: '',
      args: [],
    );
  }

  /// `Mongolian`
  String get mongolian {
    return Intl.message(
      'Mongolian',
      name: 'mongolian',
      desc: '',
      args: [],
    );
  }

  /// `Tibetan`
  String get tibetan {
    return Intl.message(
      'Tibetan',
      name: 'tibetan',
      desc: '',
      args: [],
    );
  }

  /// `Uzbek`
  String get uzbek {
    return Intl.message(
      'Uzbek',
      name: 'uzbek',
      desc: '',
      args: [],
    );
  }

  /// `Kazakh`
  String get kazakh {
    return Intl.message(
      'Kazakh',
      name: 'kazakh',
      desc: '',
      args: [],
    );
  }

  /// `Kyrgyz`
  String get kyrgyz {
    return Intl.message(
      'Kyrgyz',
      name: 'kyrgyz',
      desc: '',
      args: [],
    );
  }

  /// `Tajik`
  String get tajik {
    return Intl.message(
      'Tajik',
      name: 'tajik',
      desc: '',
      args: [],
    );
  }

  /// `Turkmen`
  String get turkmen {
    return Intl.message(
      'Turkmen',
      name: 'turkmen',
      desc: '',
      args: [],
    );
  }

  /// `Azerbaijani`
  String get azerbaijani {
    return Intl.message(
      'Azerbaijani',
      name: 'azerbaijani',
      desc: '',
      args: [],
    );
  }

  /// `Georgian`
  String get georgian {
    return Intl.message(
      'Georgian',
      name: 'georgian',
      desc: '',
      args: [],
    );
  }

  /// `Armenian`
  String get armenian {
    return Intl.message(
      'Armenian',
      name: 'armenian',
      desc: '',
      args: [],
    );
  }

  /// `Albanian`
  String get albanian {
    return Intl.message(
      'Albanian',
      name: 'albanian',
      desc: '',
      args: [],
    );
  }

  /// `Bosnian`
  String get bosnian {
    return Intl.message(
      'Bosnian',
      name: 'bosnian',
      desc: '',
      args: [],
    );
  }

  /// `Macedonian`
  String get macedonian {
    return Intl.message(
      'Macedonian',
      name: 'macedonian',
      desc: '',
      args: [],
    );
  }

  /// `Montenegrin`
  String get montenegrin {
    return Intl.message(
      'Montenegrin',
      name: 'montenegrin',
      desc: '',
      args: [],
    );
  }

  /// `Belarusian`
  String get belarusian {
    return Intl.message(
      'Belarusian',
      name: 'belarusian',
      desc: '',
      args: [],
    );
  }

  /// `Ukrainian`
  String get ukrainian {
    return Intl.message(
      'Ukrainian',
      name: 'ukrainian',
      desc: '',
      args: [],
    );
  }

  /// `Latvian`
  String get latvian {
    return Intl.message(
      'Latvian',
      name: 'latvian',
      desc: '',
      args: [],
    );
  }

  /// `Lithuanian`
  String get lithuanian {
    return Intl.message(
      'Lithuanian',
      name: 'lithuanian',
      desc: '',
      args: [],
    );
  }

  /// `Estonian`
  String get estonian {
    return Intl.message(
      'Estonian',
      name: 'estonian',
      desc: '',
      args: [],
    );
  }

  /// `Icelandic`
  String get icelandic {
    return Intl.message(
      'Icelandic',
      name: 'icelandic',
      desc: '',
      args: [],
    );
  }

  /// `Irish`
  String get irish {
    return Intl.message(
      'Irish',
      name: 'irish',
      desc: '',
      args: [],
    );
  }

  /// `Welsh`
  String get welsh {
    return Intl.message(
      'Welsh',
      name: 'welsh',
      desc: '',
      args: [],
    );
  }

  /// `Scots Gaelic`
  String get scotsgaelic {
    return Intl.message(
      'Scots Gaelic',
      name: 'scotsgaelic',
      desc: '',
      args: [],
    );
  }

  /// `Basque`
  String get basque {
    return Intl.message(
      'Basque',
      name: 'basque',
      desc: '',
      args: [],
    );
  }

  /// `Catalan`
  String get catalan {
    return Intl.message(
      'Catalan',
      name: 'catalan',
      desc: '',
      args: [],
    );
  }

  /// `Galician`
  String get galician {
    return Intl.message(
      'Galician',
      name: 'galician',
      desc: '',
      args: [],
    );
  }

  /// `Luxembourgish`
  String get luxembourgish {
    return Intl.message(
      'Luxembourgish',
      name: 'luxembourgish',
      desc: '',
      args: [],
    );
  }

  /// `Maltese`
  String get maltese {
    return Intl.message(
      'Maltese',
      name: 'maltese',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while updating user information:`
  String get profilesos1 {
    return Intl.message(
      'An error occurred while updating user information:',
      name: 'profilesos1',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while uploading the profile photo:`
  String get profilesos2 {
    return Intl.message(
      'An error occurred while uploading the profile photo:',
      name: 'profilesos2',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while deleting the profile photo:`
  String get profilesos3 {
    return Intl.message(
      'An error occurred while deleting the profile photo:',
      name: 'profilesos3',
      desc: '',
      args: [],
    );
  }

  /// `Edit The Information`
  String get EditTheInformation {
    return Intl.message(
      'Edit The Information',
      name: 'EditTheInformation',
      desc: '',
      args: [],
    );
  }

  /// `New Value`
  String get newvalue {
    return Intl.message(
      'New Value',
      name: 'newvalue',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a value.`
  String get pleaseenteravalue {
    return Intl.message(
      'Please enter a value.',
      name: 'pleaseenteravalue',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Unspecified`
  String get Unspecified {
    return Intl.message(
      'Unspecified',
      name: 'Unspecified',
      desc: '',
      args: [],
    );
  }

  /// `Change your profile photo`
  String get profilephoto {
    return Intl.message(
      'Change your profile photo',
      name: 'profilephoto',
      desc: '',
      args: [],
    );
  }

  /// `Name:`
  String get name {
    return Intl.message(
      'Name:',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Surname:`
  String get surname {
    return Intl.message(
      'Surname:',
      name: 'surname',
      desc: '',
      args: [],
    );
  }

  /// `Gender:`
  String get Gender {
    return Intl.message(
      'Gender:',
      name: 'Gender',
      desc: '',
      args: [],
    );
  }

  /// `My Ads`
  String get MyAds {
    return Intl.message(
      'My Ads',
      name: 'MyAds',
      desc: '',
      args: [],
    );
  }

  /// `Work:`
  String get work {
    return Intl.message(
      'Work:',
      name: 'work',
      desc: '',
      args: [],
    );
  }

  /// `No Title`
  String get NoTitle {
    return Intl.message(
      'No Title',
      name: 'NoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get Unknown {
    return Intl.message(
      'Unknown',
      name: 'Unknown',
      desc: '',
      args: [],
    );
  }

  /// `You haven't added an ad yet.`
  String get noad {
    return Intl.message(
      'You haven\'t added an ad yet.',
      name: 'noad',
      desc: '',
      args: [],
    );
  }

  /// `My Applications`
  String get MyApplications {
    return Intl.message(
      'My Applications',
      name: 'MyApplications',
      desc: '',
      args: [],
    );
  }

  /// `You haven't applied yet.`
  String get Youhavenotappliedyet {
    return Intl.message(
      'You haven\'t applied yet.',
      name: 'Youhavenotappliedyet',
      desc: '',
      args: [],
    );
  }

  /// `User data could not be uploaded.`
  String get userdatasos {
    return Intl.message(
      'User data could not be uploaded.',
      name: 'userdatasos',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
