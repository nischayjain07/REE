import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class StringConstants {
  static const String nslTitle = 'NSL Hub';
  static const String title = 'nslhub';
  static const transactionsExecutionErrorCode = 'SOMETHING_WENT_WRONG';
  static const String capitalTitle = 'NSLHUB';
  static const sessionTimeoutError = 'LOGIN_AGAIN';
  static const somethingWentWrongTryAgain = 'Something Went Wrong, Try Again';
  static const noRecordsError = 'No records found';
  static const downloading = 'downloading';
  static const String monthFormat = 'MMM';
  static const String solution = 'Solution';
  static const String transaction = 'Transaction';
  static const String featureName = 'featureName';
  static const String featureDisplayName = 'featureDisplayName';
  static const String active = 'active';
  static const String price = 'monthlyPrice';
  static const String yearlyPrice = 'yearlyPrice';
  static const String multiplicationFactor = 'multiplicationFactor';
  static const String packageGroup = 'packageGroup';
  static const String packageGroupDisplayName = 'packageGroupDisplayName';
  static const String meterable = 'meterable';
  static const String subscriptionPlanName = 'subscriptionPlanName';
  static const String billingType = 'billingType';
  static const String fixed = 'fixed';
  static const String dynamic = 'dynamic';
  static const String duration = 'duration';
  static const String comments = 'comments';
  static const String paas = 'paas';
  static const String saas = 'saas';
  static const String tenantName = 'tenantName';
  static const String contactEmail = 'contactEmail';
  static const String username = 'username';
  static const String contactNo = 'contactNo';
  static const String tenantSegmentation = 'tenantSegmentation';
  static const String tenantIndustry = 'tenantIndustry';
  static const String discountAmount = 'discountAmount';
  static const String paidAmount = 'paidAmount';
  static const String inactive = 'InActive';
  static const String subscriptionDuration = 'subscriptionDuration';
  static const String a365 = '365';
  static const String a183 = '183';
  static const String tenant = 'tenant';
  static const String tenantType = 'tenantType';
  static const String seedAllReservedCUs = 'seedAllReservedCUs';
  static const String tenantDesc = 'tenantDesc';
  static const String queryType = 'queryType';
  static const String entityName = 'entityName';
  static const String cuId = 'cuId';
  static const String solutionName = 'solutionName';
  static const String typeOfFilter = 'typeOfFilter';

  // static const String myPlan = 'My Solutions';
  // static const String failedToLoadData = 'Failed to load solution data';
  // static const String failedToLoadBook = 'Failed to load books data';
  // static const String noSolutionFound = 'No solution found';

  // static const String noSolution = 'NO_SOLUTION_IN_THIS_BOOK';
  static const String escalateSuccess = 'Transaction is escalated successfully';
  static const String escalateError = 'Error in Escalate';
  static const String testerRole = 'Tester';
  static const String permissionStorageError = 'Storage Permission not granted';
  static const String success = 'success';
  static const String failure = 'failed';
  static const String locationReservedEntity = 'NSL_CH_Labs_Response';
  static const String trueValue = 'true';
  static const String falseValue = 'false';

  // static const String all = 'All';
  static const String integrationConfigName = 'configurationName';
  static const String integrationIsEnabled = 'isEnabled';
  static const String nslhubGoogleMapsApiKey = 'AIzaSyDyCSb98Hs5BQQlATNUswc0SSIEEyo6Q9U';
  static const String allow = 'yes';
  static const String deny = 'no';
  static const String csvFileExtension = 'csv';
  static const String ok = 'OK';
  static const String copyright = '�2021 Brane Enterprises Private Limited';
  static const String locale = 'en_US';
  static const String nslhubHostName = '.nslhub.com';
  static const String unreadNotificationHiveBoxId = 'hiveUnreadCount';
  static const String envDevelopment = 'development';
  static const String responseTypeCreated = 'CREATED';
  static const String unauthorized = 'Unauthorized';
  static const String currentLocation = 'CURRENT_LOCATION';
  static const String b2cTenant = 'b2c';
  static const String defaultTenant = 'nslhub';
  static const int apiCallTimeout = 10;
  static const int minAndroidVersionForBiometricSupport = 9;
  static const String options = 'OPTIONS';
  static const String value = 'VALUE';
  static const String envProduction = 'production';

  static const String httpsColonSlash = 'https://';
  static const String httpColonSlash = 'http://';
  static const String httpsColon = 'https:';
  static const String httpColon = 'http:';

  static const String informationRights = 'IR';
  static const String designRights = 'DR';
  static const String executionRights = 'XR';

  static const String pushNotification = 'PUSH_NOTIFICATION';

  static const String numberRegex = '^[+-]?[0-9]*';

  // Import entity data
  static const String importTryAgainLabel = 'Try again';
  static const String importS3Title = 'File Explorer';
  static const String importCloseLabel = 'Close';
  static const String importFormErrorMsg = 'Please select a file to import entity data';
  static const String importTitle = 'Import Entity';
  static const String importEditTitle = 'Edit Import Entity';
  static const String importFileLabel = 'File Name';
  static const String importDateLabel = 'Imported On';
  static const String importDataError = 'Error in importing data';
  static const String importAlert = 'Alert';
  static const String importFileUpload = 'File Upload';
  static const String importContent = 'Content verification';
  static const String importNoRecord = 'No Record found';
  static const String importAll = 'All';
  static const String importPass = 'Pass';
  static const String importFail = 'Fail';
  static const String importDownloadIndicator = 'Downloading...';
  static const String importDownloadLabel = 'Download Failed Records';
  static const String importFailedReason = 'Reason';
  static const String importDateTitle = 'Imported On  - ';
  static const String importDone = 'Done';
  static const String importViewLabel = 'View';
  static const String importTableLabel1 = 'Row';
  static const String importTableLabel2 = 'Transaction Status';
  static const String importTableLabel3 = 'Errors';
  static const String importTableLabel4 = 'Reason';
  static const String importAttribute = 'Imported Attribute';
  static const String importExistingAttribute = 'Existing Attribute';
  static const String importSelectHint = 'Select Item';
  static const String importTryAgainMsg = 'Something went wrong!';
  static const String svg = 'svg';

  // Adapter
  static const String viewIntegration = 'View Integration';
  static const String viewConnections = 'View Connections';
  static const String viewAdapters = 'View Adapters';
  static const String addAdapter = 'Add Adapter';
  static const String editAdapter = 'Edit Adapter';
  static const String configuration = 'Configuration';
  static const String resources = 'Resources';
  static const String adapterFailed = 'failed';
  static const String adapterSaved = 'Adapter Saved';
  static const String adapterError = 'Adapter Error';
  static const String adapter = 'Adapter';
  static const String editConnection = 'Edit Connection';
  static const String addConnection = 'Add Connection';
  static const String connectionSuccess = 'Adapter Connection Created Successful';
  static const String connectionFailed = 'Adapter Connection Save Failed ';
  static const String advancedConfiguration = 'Advance Configuration';
  static const String connectionCreated = 'Adapter Connection  Created';
  static const String selectType = 'Select Connection Type';
  static const String connectionAuthentication = 'Authentication';

  // Bets
  static const String books = 'BOOKS';
  static const String solutions = 'SOLUTIONS';
  static const String book = 'BOOK';
  static const String solutionCaps = 'SOLUTION';
  static const String gsi = 'GSI';
  static const String cu = 'CU';

  // Transactions Filters
  static const String transactionFilterTypeBasic = 'basic';
  static const String transactionFilterTypeAdvance = 'advance';

  // User or Role status
  static const String statusActive = 'Active';
  static const String statusInactive = 'Inactive';

  // Layers
  static const String physicalLayer = 'physical';
  static const String informationLayer = 'information';
  static const String triggerCesLayer = 'TriggerCES';

  // User groups
  static const String tenantAdmin = 'Tenant_Admin';
  static const String platformAdmin = 'Platform_Admin';
  static const String environmentAdmin = 'Environment_Admin';

  // Billing time range
  static const String timeRangeWeek = 'Week';
  static const String timeRangeMonth = 'Month';
  static const String timeRangeQuarter = 'Quarter';
  static const String timeRangeYear = 'Year';
  static const String timeRangeCustom = 'Custom';

  // Transaction Actions
  static const String triggered = 'TRIGGERED';
  static const String resumed = 'RESUMED';
  static const String completed = 'COMPLETED';
  static const String expired = 'EXPIRED';
  static const String failed = 'FAILED';
  static const String aborted = 'ABORTED';
  static const String suspended = 'SUSPENDED';
  static const String withdrawn = 'WITHDRAWN';
  static const String escalate = 'Escalate';
  static const String assign = 'Assign';
  static const String suspend = 'Suspend';
  static const String withdraw = 'Withdraw';
  static const String resume = 'Resume';
  static const String abort = 'Abort';
  static const String acquire = 'Acquire';
  static const String cancelAutoSubmit = 'cancel-autoSubmit';
  static const String cancelAutoSubmitAction = 'CancelAutoSubmit';
  static const String release = 'Release';
  static const String history = 'History';
  static const String escalated = 'Escalated';

  // Operators
  static const String equals = 'EQUALS';
  static const String and = 'AND';
  static const String or = 'OR';
  static const String contains = 'CONTAINS';

  // UI controls
  static const String attributeTypeString = 'string';
  static const String attributeTypeNumber = 'number';
  static const String attributeTypeBoolean = 'boolean';
  static const String attributeTypeDateRange = 'dateRange';
  static const String attributeTypeDate = 'date';
  static const String attributeTypeEmail = 'email';
  static const String attributeTypeMobileNumber = 'mobilenumber';

  static const String uiElementTypeSignature = 'signature';
  static const String uiElementTypeDropdown = 'dropdown';
  static const String uiElementTypeMultiselectDropdown = 'multiselectdropdown';
  static const String uiElementTypeRadioButton = 'radioButton';
  static const String uiElementTypeCheckbox = 'checkbox';
  static const String uiElementTypeMetric = 'metric';
  static const String uiElementTypeCurrency = 'currency';

  // Solution execution
  static const String layerTypeInformation = 'information';
  static const String layerTypePhysical = 'physical';
  static const List allowedImageExtensions = ['jpg', 'jpeg', 'png'];
  static const List allowedVideoExtensions = ['mp4', 'mkv', 'avi', 'wmp', 'mpeg', '3gp'];
  static const List allowedAudioEntensions = ['mp3', 'wav', 'aac', 'wma', 'm4a'];
  static const List changeDriverTypeList = ['OPTIONAL', 'NEGATIVE', 'ALTERNATIVE', 'none'];
  static const String txnDefaultTemplate = 't-7';
  static const String txnTemplate1 = 't-8';

  // Events
  static const String eventOnChange = 'ON_CHANGE';
  static const String eventOnFocus = 'ON_FOCUS';
  static const String eventOnLoad = 'ON_LOAD';

  // Feature Subscription
  static const String importEntitySubscription = 'ImportEntity';
  static const String exportEntitySubscription = 'ExportEntity';
  static const String importSolutionSubscription = 'ImportSolution';
  static const String exportSolutionSubscription = 'ExportSolution';

  // Bottom navigation tabs
  static const String tabNotification = 'NOTIFICATIONS';
  static const String tabDashboard = 'DASHBOARD';
  static const String tabAdsDashboard = 'ADS_DASHBOARD';
  static const String tabMySelf = 'MY_SELF';
  static const String tabMyTransactions = 'MY_TRANSACTIONS';
  static const String tabMyOrganisation = 'MY_ORGANISATION';
  static const String tabMySolutions = 'MY_SOLUTIONS';
  static const String tabMilestone = 'MILESTONE_DASHBOARD';
  static const String tabMore = 'MORE';

  // Notifications
  static const String notificationStatusUnread = 'UNREAD';
  static const String notificationStatusRead = 'READ';

  // Rights
  static const String read = 'Read';
  static const String write = 'Write';
  static const String execute = 'Execute';

  // Tenant and Platform Admin
  static const String manageRoles = 'Manage Roles';
  static const String manageUsers = 'Manage Users';
  static const String manageGroups = 'Manage Groups';
  static const String manageLdap = 'Manage ID Providers';
  static const String manageData = 'Import/Export';
  static const String manageDashboard = 'Manage Dashboards';
  static const String manageTenants = 'Manage Tenants';
  static const String manageSubscriptions = 'Manage Subscriptions';
  static const String managePasswordPolicy = 'Manage Password Policy';
  static const String manageIntegrations = 'Manage Integrations';
  static const String manageEnvironments = 'Manage Environments';
  static const String manageOrganizationUnits = 'Manage Organization Units';
  static const String managePermissionSets = 'Manage Permission Sets';
  static const String manageTemplates = 'Manage Templates';

  static const String viewRoles = 'View Roles';
  static const String viewUsers = 'View Users';
  static const String viewGroups = 'View LDAP Groups';
  static const String viewLdap = 'View LDAP Config';
  static const String viewTenants = 'View Tenants';
  static const String importEntity = 'Import Entity';
  static const String importSolution = 'Import Solution';
  static const String entitySolution = 'SOLUTION';
  static const String role = 'Role';
  static const String user = 'User';
  static const String entity = 'Entity';
  static const String importUser = 'Import User';
  static const String viewPlans = 'View Plans';
  static const String viewFeatures = 'View Features';
  static const String viewDatasets = 'View Datasets';
  static const String viewPermissionSets = 'View Permission Sets';
  static const String viewCategories = 'View Categories';
  static const String viewEvents = 'View Events';
  static const String viewTemplates = 'View Templates';
  static const String mapTemplates = 'Map Templates';
  static const String createDashboard = 'Create Dashboard';
  static const String exportEntity = 'Export Entity';
  static const String importRole = 'Import Role';
  static const String organizationUnit = 'Organization Unit';
  static const String orgUnit = 'ORG_UNIT';
  static const String viewOrganizationUnits = 'View Organization Units';
  static const String add = 'Add';
  static const String edit = 'Edit';
  static const String delete = 'Delete';
  static const String view = 'View';
  static const String parent = 'Parent';
  static const String description = 'description';
  static const String smallEntity = 'entity';

  static const String addRoles = 'Add Role';
  static const String addUsers = 'Add User';
  static const String addGroups = 'Add Group';
  static const String addLdap = 'Add LDAP Config';
  static const String addTenants = 'Add Tenants';
  static const String updateTenants = 'Update Tenants';
  static const String addFeature = 'Add Feature';
  static const String updateFeature = 'Update Feature';
  static const String addPlan = 'Add Subscription Plan';
  static const String updatePlan = 'Update Subscription Plan';
  static const String deleteFeatureMapping = 'Delete Feature Mapping';
  static const String addFeatureMapping = 'Add Feature Mapping';
  static const String passwordolicy = 'Password Policy';
  static const String accountLockPolicy = 'Account Lock Policy';
  static const String addOrganizationUnit = 'Add Organization Unit';
  static const String addPermissionSets = 'Add Permission Sets';
  static const String updatePermissionSets = 'Edit Permission Sets';

  //Key Management Service Constant
  static const String viewKey = 'View Key';
  static const String addKey = 'Add Key';
  static const String sslCertificate = 'SSLCERTIFICATE';
  static const String sshKey = 'SSHKEY';
  static const String encryptionKey = 'ENCRYPTIONKEY';
  static const String keyManagement = 'Key Management';
  static const String status = 'status';
  static const String message = 'message';
  static const String result = 'result';
  static const String attributeId = 'attributeId';
  static const String encryptionKeyType = 'encryptionKeyType';
  static const String expiryTime = 'expiryTime';
  static const String fileExtension = 'fileExtension';
  static const String keyManagerDtoList = 'keyManagerDtoList';
  static const String name = 'name';
  static const String alias = 'alias';
  static const String kmsType = 'kmsType';
  static const String isEncryptionKeyPrivate = 'isEncryptionKeyPrivate';
  static const String pageNumber = 'pageNumber';
  static const String currentPageSize = 'currentPageSize';
  static const String totalPages = 'totalPages';
  static const String totalHits = 'totalHits';
  static const String password = 'password';
  static const String file = 'file';
  static const String pgp = 'PGP';

  static const String syncUsers = 'SYNC_USERS';
  static const String syncGroups = 'SYNC_GROUPS';

  static const String importUserSuccessMsg = 'All users created successfully';
  static const String importRoleMessage = 'All roles imported successfully';
  static const String importSolutionSuccessMsg = 'Solution imported successfully!';
  static const String importSolutionErrorMsg = 'Error in importing the solution.';
  static const String exportSolutionSuccessMsg = 'Error in exporting the solution.';
  static const String exportBillErrorMsg = 'Error in exporting the billing data.';
  static const String importEntitySuccessMsg = 'Entity data imported successfully!';
  static const String importEntityErrorMsg = 'Error in importing the entity data.';
  static const String updateTenantSuccessMsg = 'Tenant updated successfully.';

  static const String updateTenantErrorMsg = 'Tenant updation failed.';
  static const String updateFeatureSuccessMsg = 'Feature updated successfully.';
  static const String updateFeatureErrorMsg = 'Feature updation failed.';
  static const String updatePermissionSetSuccessMsg = 'Permission Set updated successfully.';
  static const String updatePermissionSetErrorMsg = 'Permission Set updation failed.';
  static const String updatePlanSuccessMsg = 'Plan updated successfully.';
  static const String updatePlanErrorMsg = 'Plan updation failed.';
  static const String deleteFeatureMappingErrorMsg = 'Feature Mapping deletion failed.';
  static const String deleteFeatureMappingSuccessMsg = 'Feature Mapping deleted successfully';
  static const String addFeatureMappingErrorMsg = 'Feature Mapping addition failed.';
  static const String addFeatureMappingSuccessMsg = 'Feature Mapping added successfully';
  static const String deletePlanErrorMsg = 'Plan deletion failed.';
  static const String deletePlanSuccessMsg = 'Plan deleted successfully';
  static const String deleteFeatureErrorMsg = 'Feature deletion failed.';
  static const String deleteFeatureSuccessMsg = 'Feature deleted successfully';
  static const String addDatasetErrorMsg = 'Error in adding Dataset.';
  static const String addDatasetSuccessMsg = 'Dataset added successfully.';
  static const String fetchGroupsErrorMsg = 'Error in fetching groups.';
  static const String fetchUsersErrorMsg = 'Error in fetching users.';
  static const String fetchOUErrorMsg = 'Error in fetching organization unit data.';
  static const String fetchSolutionsErrorMsg = 'Error in fetching solutions within the selected book.';
  static const String fetchSolutionDetailsErrorMsg = 'Error in fetching selected solution details.';
  static const String publishDashboardSuccessMsg = 'Dashboard published successfully.';
  static const String updatePasswordPolicySuccessMsg = 'Password policy updated successfully.';
  static const String updatePasswordPolicyErrorMsg = 'Password policy updation failed.';
  static const String currentSessionExpired = 'Current session has ended, please login again.';
  static const String changeUnit = 'Change Unit';
  static const String attribute = 'Attribute';

  static const String physicalLayerPL = 'PL';
  static const String informationLayerIL = 'IL';
  static const String triggerCes = 'triggerCES';
  static const String csvFormat = 'CSV';
  static const String xlsFormat = 'XLS';
  static const String pdfFormat = 'PDF';

  // Business Dashboard
  static const String dashboardWidgetPie = 'pie';
  static const String dashboardWidgetBar = 'stackedColumn';
  static const String dashboardWidgetHorizontalBar = 'bar';
  static const String dashboardWidgetLine = 'line';
  static const String dashboardWidgetTable = 'table';

  // OTP
  static const String otpValidity = '00:30';
  static const String otpValidityEnd = '00:00';
  static const int otpLength = 6;
  static const double otpResetTime = 1.0;
  static const int otpInitialTime = 60;

  static const String targetTypeBook = 'BOOK';
  static const String targetTypeSolution = 'SOLUTION';

  static const String permissionObject = 'PERMITTED_OBJECT';

  static const String milestoneDashboardAll = 'All';
  static const String milestoneDashboardCompletedOnTime = 'Completed On Time';
  static const String milestoneDashboardCompletedDelayed = 'Completed Delayed';
  static const String milestoneDashboardPendingOnTime = 'Pending On Time';
  static const String milestoneDashboardPendingDelayed = 'Pending Delayed';
  static const String milestoneDashboardStatusCompletedOnTime = 'COMPLETED_ON_TIME';
  static const String milestoneDashboardStatusCompletedDelayed = 'COMPLETED_DELAYED';
  static const String milestoneDashboardStatusPendingOnTime = 'PENDING_ON_TIME';
  static const String milestoneDashboardStatusPendingDelayed = 'PENDING_DELAYED';
  static const String milestoneDashboardCount = 'Count';
  static const String milestoneDashboardPercentage = 'Percentage';
  static const String milestoneDashboardHour = 'hr';
  static const String milestoneDashboardMinutes = 'mins';
  static const String milestoneZeroZero = '00';
  static const String version = 'Version';

  static const String dashboardAggregationTypeTerm = 'TERM';
  static const String dashboardConfigurationTypePercent = 'TERM_PERCENTAGE';
  static const String dashboardConfigurationTypeSum = 'SUM';
  static const String dashboardConfigurationTypeTotalCount = 'Count';
  static const String dashboardConfigurationTypeXyAxis = 'XY Axis';
  static const String dashboardChartTypeTimeSeries = 'timeSeries';
  static const String dashboardChartTypeData = 'data';
  static const String chartTypeData = 'data';
  static const String dashboardTriggerCuId = 'triggerCUId';
  static const String dashboardTermCurrency = 'TERM_CURRENCY';
  static const String dashboardResponseType = 'AGG_KEY_VALUE_FORMAT';
  static const String dashboardQueryTypeOr = 'OR';
  static const String dashboardStringCompareCondition = '_compareCondition';
  static const String dashboardFilterTypeAdvance = 'advance';
  static const String dashboardCompareConditionEquals = 'EQUALS';

  static const String dashboardStarterTemplate = 'STARTER';
  static const String dashboardCustomTemplate = 'CUSTOM';
  static const String dashboardRtctTemplate = 'KANBAN';
  static const String dashboardTriggerCuStatus = 'triggerCuStatus';
  static const String dashboardFilterCondition = 'SLA_COMPLETION_TIME';

  static const String dashboardTimeRangeDaily = 'DAILY';
  static const String dashboardTimeRangeWeekly = 'WEEKLY';
  static const String dashboardTimeRangeMonthly = 'MONTHLY';
  static const String dashboardTimeRangeQuarterly = 'QUARTERLY';
  static const String dashboardTimeRangeYearly = 'YEARLY';

  static const String search = 'Search';
  static const String overview = 'OVERVIEW';
  static const String publishToNsl = 'PUBLISH_TO_NSL';
  static const String promote = 'PROMOTE';
  static const String generateReport = 'GENERATE_REPORT';
  static const String androidDownloadNotificationIcon = '@mipmap/ic_launcher';

  static const String uploadFromFileExplorer = 'Upload from File Explorer';
  static const String uploadFromFiles = 'Upload from Files';
  static const String na = 'NA';

  static const String administrativeAreaLevel1 = 'administrative_area_level_1';
  static const String administrativeAreaLevel2 = 'administrative_area_level_2';
  static const String country = 'country';

  static const String conditionalAnd = ' && ';
  static const String conditionalOr = ' || ';
  static const String conditionalRightsAnd = '&&';
  static const String conditionalRightsOr = '||';

  static const String cancel = 'CANCEL';
  static const String next = 'NEXT';
  static const String save = 'SAVE';

  static const String dtrtEntityType = 'GENERALENTITY';
  static const String dtrtAttributeType = 'NSLATTRIBUTES';
  static const String dtrtCuType = 'CU';
  static const String dtrtDisplayName = 'DISPLAYNAME';
  static const String dtrtCcdData = 'CCDDATA';
  static const String dtrtSaveStatus = 'DRAFT';
  static const String dtrtPhysicalLayer = 'PL';
  static const String dtrtLayerType = 'physical';
  static const String dtrtReservedLayer = 'reservedActions';
  static const String dtrtCuChange = 'CU';
  static const String dtrtEntityChange = 'GENERAL ENTITY';
  static const String dtrtAttributeChange = 'ATTRIBUTES';
  static const String dtrtCcdChange = 'CCD';
  static const String dtrtNameChange = 'DISPLAY NAME';
  static const String dtrtRevert = 'reverted';
  static const String solutionCustomiser = 'SolutionCustomizer';
  static const String slotItemKey = 'SL00';
  static const String dtrtEntity = 'EN';
  static const String dtrtAttribute = 'AT';
  static const String textFieldType = 'text';
  static const String irdr = 'IR/DR';
  static const String notAvailable = 'NA';
  static const String alertThreshold = 'Alert';
  static const String alertMilestone = 'milestoneAlert';
  static const String warningThreshold = 'Warning';
  static const String warningMiestone = 'milestoneWarning';
  static const String escalateThreshold = 'Escalate';
  static const String escalateMilestone = 'milestoneEscalate';
  static const String oneUnit = '0';
  static const String twoUnit = '00';
  static const String attributeKey = 'Agents';
  static const String timeSeparator = ':';
  static const String timeRepresentation = 'HH:MM';
  static const String onArrival = 'ON_ARRIVAL';
  static const String onCompletion = 'ON_COMPLETION';
  static const String sendEmail = 'SEND_EMAIL';

  static const String all = 'All';

  // Social sign up
  static const String socialSignInIndentifier = 'keycloak';
  static const String socialSignInClientSecret = '';
  static const String soaiclSignInRedirectUrl = 'com.nslhub://auth/';
  static const String socialSignInGoogle = 'google';
  static const String socialSignInFacebook = 'facebook';
  static const String socialSignInLinkedIn = 'linkedin';
  static const String socialSignInGithub = 'github';
  static const String socialSignInApple = 'apple';

  static const String uiElementsTypeSignature = 'signature';
  static const String location = 'location';
  static const String richTextEditor = 'editor';

  // static const String dashboardAggregationType = 'TERM';

  // Ads
  static const String adsBasedPlan = 'AdBasedPlan';
  static const String mobile = 'Mobile';
  static const String sector = 'sector';
  static const String india = 'India';
  static const String adtypeBanner = '320 X 50';
  static const String adTypeExpandableBanner = 'expandable';
  static const String adsDashboardAdmin = 'AdPlatformAdmin';
  static const String adsDashboardAdvertiser = 'Advertiser';
  static const String adsDashboardPublisher = 'Publisher';

  static const String timeRangeLast7Days = 'Last 7 Days';
  static const String timeRangeLast30Days = 'Last 30 Days';
  static const String timeRangeLast1Month = 'Last One Month';
  static const String timeRangeLast3Months = 'Last Three Months';
  static const String timeRangeLast6Months = 'Last Six Months';
  static const String timeRangeLast1Year = 'Last One Year';

  static const String day = 'DAY';
  static const String week = 'WEEK';
  static const String month = 'MONTH';
  static const String quarter = 'QUARTER';

  // configurations
  static const String configLanguage = 'NSL_LANGUAGE';
  static const String configEnvClientId = 'NSL_ENV_CLIENT_ID';
  static const String configEnvironmentUrl = 'NSL_ENVIRONMENT_URL';
  static const String configIsAllowDiagnosticReports = 'NSL_ALLOW_REPORTS';
  static const String configBiometricAuthenticationSetting = 'NSL_BIOMETRIC_AUTHENTICATION_SETTING';
  static const String configIsBiometricSupported = 'NSL_IS_BIOMETRIC_SUPPORTED';
  static const String configTenantLogo = 'NSL_LOGO';
  static const String configTenantFooterDescription = 'NSL_FOOTER_DESCRIPTION';
  static const String configIsB2cUser = 'NSL_IS_B2C_USER';
  static const String configLoginToken = 'NSL_TOKEN';
  static const String configLoginRefreshToken = 'NSL_REFRESH_TOKEN';
  static const String configUserId = 'NSL_USER_ID';
  static const String configUserEmail = 'NSL_USER_EMAIL';
  static const String configUsername = 'NSL_USER_NAME';
  static const String configIsPlatformAdmin = 'NSL_IS_PLATFORM_ADMIN';
  static const String configIsTenantAdmin = 'NSL_IS_TENANT_ADMIN';
  static const String configIsEnvironmentAdmin = 'NSL_IS_ENVIRONMENT_ADMIN';
  static const String configIsBothAdmin = 'NSL_IS_BOTH_ADMIN';
  static const String configTenantName = 'NSL_TENANT_NAME';
  static const String configEnvironmentType = 'NSL_ENVIRONMENT_TYPE';
  static const String configTenantId = 'NSL_TENANT_ID';

  // Font family
  static const String fontFamilyLato = 'lato';
  static const String fontFamilyOswald = 'oswald';
  static const String fontFamilyPoppins = 'poppins';
  static const String fontFamilyRoboto = 'roboto';
  static const String fontFamilyOpenSans = 'openSans';
  static const String fontFamilyGirassol = 'girassol';
  static const String fontFamilyInter = 'inter';
  static const String fontFamilyLatoRegular = 'lato-regular';
  static const String fontFamilyOswaldRegular = 'oswald-regular';
  static const String fontFamilyPoppinsRegular = 'poppins-regular';
  static const String fontFamilyRobotoRegular = 'roboto-regular';
  static const String fontFamilyOpenSansRegular = 'open_sans-regular';

  // Date Formats
  static const String currentDateTimeFormat = 'yyyy-MM-dd HH:mm:ss.mmm';
  static const String dateFormat = 'dd-MM-yyyy';
  static const String yearMonthDateHourMinuteFormat = 'yyyy-MM-dd hh:mm';
  static const String dateTimeFormatNotification = 'MMM d, y h:mm a';
  static const String dateHourMinuteFormat = 'dd-MM-yyyy HH:mm:ssa';
  static const String adsDashboardStartDateTime = ' 12:00:00AM';
  static const String dateMonthDateYearHourMinutesFormat = 'MM/dd/yyyy, h:mm a';
  static const String dateDateMonthYearHourMinutesFormat = 'dd/MM/yyyy, h:mm a';

  // Validators
  static const String isPresentValidator = 'present';
  static const String isPastValidator = 'past';
  static const String isFutureValidator = 'future';
  static const String isPastOrPresentValidator = 'pastorpresent';
  static const String isPresentOrFutureValidator = 'presentorfuture';
  static const String isPastOrFutureValidator = 'pastorfuture';

  static const String scan = 'scan';
  static const String upload = 'upload';
  static const String pause = 'pause';
  static const String toggleTorch = 'toggleTorch';
  static const String machineSmall = 'machine';
  static const String regexMatchOperatorsWIthSpace = r'\s(==|<|>|!=|>=|<=)\s';
  static const String regexMatchOperators = r'==|>=|<=|<|>|!=|<=';
  static const String regexMatchAndOrWithSpace = r'\s&&\s|\s\|\|\s';

  static const String regexMatchAndOr = r'&&|\|\|';

  static const String text = 'text';
  static const String mobileNumber = 'mobilenumber';
  static const String number = 'number';
  static const String radioButton = 'radioButton';
  static const String currency = 'currency';
  static const String dropdown = 'dropdown';
  static const String boolean = 'boolean';
  static const String decimal = 'decimal';
  static const String checkbox = 'checkbox';
  static const String targetValue = 'targetValue';
  static const String sourceEntity = 'sourceEntity';
  static const String sourceAttribute = 'sourceAttribute';
  static const String targetEntity = 'targetEntity';
  static const String targetAttribute = 'targetAttribute';
  static const String operatorEqualsString = 'EQUALS';
  static const String operatorGreaterString = 'GT';
  static const String operatorGreaterEqualString = 'GTE';
  static const String operatorLessString = 'LT';
  static const String operatorLessEqualString = 'LTE';
  static const String operatorNotEqualString = 'NOT_EQUALS';
  static const String apiKey = "AIzaSyDCjRSXnBG3bqSMwwfDXwmOYsPj8RYFKSg";

  static const String appId = "1:145374087405:web:e3ce8f657ead4514d864e4";

  static const String messagingSenderId = "145374087405";

  static const String projectId = "fir-sitebuilder";

  static const String operatorLessThan = '<';
  static const String operatorGreaterThan = '>';
  static const String operatorEqualTo = '==';
  static const String operatorEquals = '=';
  static const String operatorNotEqualTo = '!=';
  static const String operatorLessThanEqual = '<=';
  static const String operatorGreaterThanEqual = '>=';
  static const String operatorAngleBrackets = '<>';
  static const String operatorIn = 'IN';
  static const String operatorLike = 'LIKE';
  static const String operatorContains = 'CONTAINS';
  static const String operatorBetween = 'BETWEEN';
  static const String operatorSum = 'SUM';
  static const String operatorCount = 'COUNT';
  static const String operatorMin = 'MIN';
  static const String operatorMax = 'MAX';
  static const String operatorAvg = 'AVG';
  static const String create = 'CREATE';
  static const String update = 'UPDATE';
  static const String request = 'REQUEST';
  static const String email = 'email';
  static const String emailCaps = 'Email';
  static const String minutes = 'minutes';
  static const String startTime = 'startTime';
  static const String endTime = 'endTime';
  static const String descriptionCaps = 'Description';
  static const String metadata = 'metadata';
  static const String locationCaps = 'Location';
  static const String reminder = 'Reminder';
  static const String eventType = 'Event Type';
  static const String none = 'None';
  static const String event = 'Event';
  static const String nslContacts = 'NSL_Contacts';
  static const String nslCalendarEvent = 'NSL_CalendarEvent';
  static const String nslCalendarEventStartTime = 'NSL_CalendarEvent.startTime';
  static const String nslCalendarEventEmail = 'NSL_CalendarEvent.NSL_Contacts.Email';
  static const String nslCalendarEventOrganizer = 'NSL_CalendarEvent.Organizer';
  static const String titleField = 'Title';
  static const String monthNameFormat = 'MMMM';
  static const String dayFormat = 'EEEE';
  static const String hoursMinutesFormat = 'HH:mm a';
  static const String dateFormatWithSeconds = 'yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'';
  static const String dateFormatWithoutSeconds = 'yyyy-MM-dd\'T\'HH:mm';
  static const String range = 'RANGE';
  static const String asc = 'ASC';
  static const String minutesBefore = 'minutes before';
  static const String hoursBefore = 'hours before';
  static const String nslCalendar = 'Nsl_Calendar';
  static const String five = '5';

  static const String merge = 'MERGE';
  static const String rename = 'RENAME';
  static const String newCaps = 'NEW';
  static const String map = 'MAP';
  static const String entityConfigureCard = 'card';
  static const String underscoreEntity = '_entity';

  static const String userController = 'UserController.';
  static const String transactionController = 'TransactionController.';
  static const String passController = 'PaasController.';
  static const String machineCap = 'Machine';
  static const String humanCap = 'Human';
  static const String rtctGsi = 'GSI : ';
  static const String rtctCu = 'CU : ';

  static const String userConnected = 'user_connected';
  static const String userLeft = 'user-left';
  static const String livechatClose = 'livechat_close';
  static const String qaEnvironment = 'qa3';
  static const String carnivalsEnvironment = 'carnivals';
  static const String webexReservedCu = 'NSL_external_soln_auth';
  static const String ccavenueReservedCu = 'NSL_ccavenue_payment_request';
  static const String instamojoReservedCu = 'NSL_instamojo';
  static const String razorpayReservedCu = 'NSL_razorpay';
  static const String htmlUiControl = 'html';
  static const String paymentUiControl = 'Payment';
  static const String clickHereText = 'Click Here';
  static const String ATTRIBUTE_KEY = 'Agents';
  static const String TIME_SEPARATOR = ':';
  static const String TIME_REPRESENTATION = 'HH:MM';
  static const String ON_ARRIVAL = 'ON_ARRIVAL';
  static const String ON_COMPLETION = 'ON_COMPLETION';
  static const String SEND_EMAIL = 'SEND_EMAIL';
  static const String PUSH_NOTIFICATION = 'PUSH_NOTIFICATION';
  static const String MILESTONE_ERROR = 'MILESTONE_ERROR';

  static const String SCAN = 'scan';
  static const String UPLOAD = 'upload';
  static const String PAUSE = 'pause';
  static const String TOGGLE_TORCH = 'toggleTorch';
  static const String HUMAN = 'human';
  static const String MACHINE = 'machine';
  static const String AGENTS_SOLUTION_RIGHTS = 'Solution Rights';
  static const String AGENTS_TRANSACTION_RIGHTS = 'Transaction Rights';
  static const String REGEX_MATCH_OPERATORS_WITH_SPACE = r'\s(==|<|>|!=|>=|<=)\s';
  static const String REGEX_MATCH_OPERATORS = r'==|>=|<=|<|>|!=|<=';
  static const String REGEX_MATCH_AND_OR_WITH_SPACE = r'\s&&\s|\s\|\|\s';

  static const String REGEX_MATCH_AND_OR = r'&&|\|\|';

  static const String TEXT = 'text';
  static const String MOBILE_NUMBER = 'mobilenumber';
  static const String NUMBER = 'number';
  static const String RADIO_BUTTON = 'radioButton';
  static const String CURRENCY = 'currency';
  static const String DROPDOWN = 'dropdown';
  static const String BOOLEAN = 'boolean';
  static const String DECIMAL = 'decimal';
  static const String CHECKBOX = 'checkbox';
  static const String TARGET_VALUE = 'targetValue';
  static const String OPERATOR = 'operator';
  static const String SOURCE_ENTITY = 'sourceEntity';
  static const String SOURCE_ATTRIBUTE = 'sourceAttribute';
  static const String TARGET_ENTITY = 'targetEntity';
  static const String TARGET_ATTRIBUTE = 'targetAttribute';
  static const String OPERATOR_LESS_THAN = '<';
  static const String OPERATOR_GREATER_THAN = '>';
  static const String OPERATOR_EQUAL_TO = '==';
  static const String OPERATOR_EQUALS = '=';
  static const String OPERATOR_NOT_EQUAL_TO = '!=';
  static const String OPERATOR_LESS_THAN_EQUAL = '<=';
  static const String OPERATOR_GREATER_THAN_EQUAL = '>=';
  static const String OPERATOR_ANGLE_BRACKETS = '<>';
  static const String OPERATOR_IN = 'IN';
  static const String OPERATOR_LIKE = 'LIKE';
  static const String OPERATOR_CONTAINS = 'CONTAINS';
  static const String OPERATOR_BETWEEN = 'BETWEEN';
  static const String OPERATOR_SUM = 'SUM';
  static const String OPERATOR_COUNT = 'COUNT';
  static const String OPERATOR_MIN = 'MIN';
  static const String OPERATOR_MAX = 'MAX';
  static const String OPERATOR_AVG = 'AVG';
  static const String CREATE = 'CREATE';
  static const String UPDATE = 'UPDATE';
  static const String REQUEST = 'REQUEST';
  static const String EMAIL = 'email';
  static const String EMAIL_FIELD = 'Email';
  static const String MINUTES = 'minutes';
  static const String START_TIME = 'startTime';
  static const String END_TIME = 'endTime';
  static const String DESCRIPTION_FIELD = 'Description';
  static const String METADATA = 'metadata';
  static const String LOCATION_FIELD = 'Location';
  static const String REMINDER = 'Reminder';
  static const String EVENT_TYPE = 'Event Type';
  static const String NONE = 'None';
  static const String EVENT = 'Event';
  static const String NSL_CONTACTS = 'NSL_Contacts';
  static const String NSL_CALENDAR_EVENT = 'NSL_CalendarEvent';
  static const String NSL_CALENDAR_EVENT_START_TIME = 'NSL_CalendarEvent.startTime';
  static const String NSL_CALENDAR_EVENT_EMAIL = 'NSL_CalendarEvent.NSL_Contacts.Email';
  static const String NSL_CALENDAR_EVENT_ORGANIZER = 'NSL_CalendarEvent.Organizer';
  static const String TITLE_FIELD = 'Title';
  static const String MONTH_NAME_FORMAT = 'MMMM';
  static const String DAY_FORMAT = 'EEEE';
  static const String HOURS_MINUTES_FORMAT = 'HH:mm a';
  static const String DATE_FORMAT_WITH_SECONDS = 'yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'';
  static const String DATE_FORMAT_WITHOUT_SECONDS = 'yyyy-MM-dd\'T\'HH:mm';
  static const String RANGE = 'RANGE';
  static const String ASC = 'ASC';
  static const String MINUTES_BEFORE = 'minutes before';
  static const String HOURS_BEFORE = 'hours before';
  static const String NSL_CALENDAR = 'Nsl_Calendar';
  static const String FIVE = '5';

  static const String MERGE = 'MERGE';
  static const String RENAME = 'RENAME';
  static const String NEW = 'NEW';
  static const String MAP = 'MAP';
  static const String ENTITY_CONFIGURE_CARD = 'card';
  static const String UNDERSCORE_ENTITY = '_entity';

  static const String USER_CONTROLLER = 'UserController.';
  static const String TRANSACTION_CONTROLLER = 'TransactionController.';
  static const String PAAS_CONTROLLER = 'PaasController.';
  static const String MACHINE_CAP = 'Machine';
  static const String HUMAN_CAP = 'Human';
  static const String RTCT_GSI = 'GSI : ';
  static const String RTCT_CU = 'CU : ';

  static const String USER_CONNECTED = 'user_connected';
  static const String USER_LEFT = 'user-left';
  static const String LIVECHAT_CLOSE = 'livechat_close';
  static const String WEBEX_RESERVED_CU = 'NSL_external_soln_auth';
  static const String CCAVENUE_RESERVED_CU = 'NSL_ccavenue_payment_request';
  static const String INSTAMOJO_RESERVED_CU = 'NSL_instamojo';
  static const String RAZORPAY_RESERVED_CU = 'NSL_razorpay';
  static const String HTML_UI_CONTROL = 'html';
  static const String PAYMENT_UI_CONTROL = 'Payment';
  static const String CLICK_HERE_TEXT = 'Click Here';
  static const String nothelpful = 'No,this is not helpful';

  static const String EXPRESSION_ADD = '+';
  static const String EXPRESSION_SUBTRACT = '-';
  static const String EXPRESSION_MULTIPLY = '*';
  static const String EXPRESSION_DIVIDE = '/';
  static const String EXPRESSION_MODULO = '%';
  static const String OPEN_CURVED_BRACKET = '(';
  static const String CLOSED_CURVED_BRACKET = ')';

  static const String expressionAdd = '+';
  static const String expressionSubtract = '-';
  static const String expressionMultiply = '*';
  static const String expressionDivide = '/';
  static const String expressionModulo = '%';
  static const String openCurvedBracket = '(';
  static const String closedCurvedBracket = ')';

  static const String fileDownloading = 'DOWNLOADING';
  static const String sort = 'sort';
  static const String increasingOperation = 'operations.increasing';
  static const String decreasingOperation = 'operations.decreasing';
  static const String scheduler = 'scheduler';

  static const String searchOperation = 'Search Operation';
  static const String reCenter = 'Re-center';
  static const String rootNode = 'Root Node';
  static const String undefined = 'Undefined';
  static const String assignOperation = 'Assign Operation';
  static const String copyNode = 'Copy Node';
  static const String copySubTree = 'Copy sub-tree';
  static const String deleteNode = 'Delete node';
  static const String assignOperationType = 'Assign Operation Type';
  static const String onPressed = 'onPressed';
  static const String onLongPress = 'onLongPress';
  static const String onHover = 'onHover';
  static const String propertySheet = 'Property Sheet';

  // Operations
  static const String assignment = 'Assignment';
  static const String callApi = 'Call API';
  static const String callFunction = 'Call Function';
  static const String condition = 'Condition';
  static const String computation = 'Computation';
  static const String initialization = 'Initialization';
  static const String linkPage = 'Link page';
  static const String loop = 'Loop';
  static const String returnValue = 'Return Value';
  static const String showPopup = 'Show Popup';
  static const String submitForm = 'Submit Form';

  static const String base64DefaultImage =
      'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGwAAABqCAIAAADWXSOHAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAFiUAABYlAUlSJPAAAAN0SURBVHhe7dzBS9tQAMfx/WNjh+KhbDDoeYwxhngQ3MXCLoLFwxxMPWw72EOxlxZGA5KcUoTKoBXqdgkeimAvhiK80wMhEChL0mcba1vr+jN5jt+XHEraBvLhvSSKvmd9tnBEBEREQEQERERARAREREBEBEREQEQERERARAREREBEBEREQEkh9qz1zIvnsC1v9tSBdSghRGkX7kAstG3aUh1agxJCdPaWxhQW3DJ7jjq0BiWD2DnIjSssuuXKHXXw9EsE8cJ4f3PymeVi81xIT70Ty/k2BMp8nzDMPCnOW/vLwxH9oXah3km9JBCHF8TMmuX6aued7kMc5LvmmnLU57KYAKLX3IposrvNWWc9H2KQbO1ko49ttSYM6DRKANHZj8553RBqx+TmRuz3hZEPP5YtanJzeXzEq+PN3FJ4H5g6kQc9ALHvh3eqTK7QuFI70i2RG0swpe+feA9BDJrjiImVEOIcPRBRp4gIiIiAiAiIiICICIiIgIgIiIiAiAiIiICICIiIgIgIiIiAiAhIG8Tr1s4Icbd5rXY/ibRA9Hodc+PtjWC4vdmwOj2Nfnc9u3QR41N42vYEpjYRAelzY3nCEREQEQERERARAREREBEBEREQEQERERARAREREBEBEREQEQERERARAREREBEBEREQEQERERARAREREBEBEREQEQERERARAREREBEBEREQEQERERARARER0GMjzvzT9lVr9spX0xNO+1+/+gglOxLbFmgZUyICIuJYvjj9kX8drmz3cmXL6qrlAT2nZNxeo03tcfZiFwQ9FkVNG9F3zc1t80x4kZc8sz7nje7A7tqplJ3hv6Z5bcMeLd3JkRhL2mXzUr1W9eq1X4rO+1OttKPX8nfN6Eb7BhFxlGwYd1fjFPbhaJJ2qlVHeqc/67fXUSXiKGGuxi5wwy1+pfO79qft8dFKxFji9MRVL6cVTOSvxdrJ2Hgl4qiJ0zmebJTCiewaxu1FfYkYS9rFGctlC6tsDyay79rV3zFu0bD1Was8bcTwESf/cf+oKwf3DU90j6zGRcTVqx/Efyy8rFeOhqNR2F+q6klIg9JGDAoetkuFlVfhLSX7rlA5ieCCoVc6HluW2z28GZjhY2M5/Ioeq0Qni/ifRkRARAREREBEBEREQEQERERARAREREBEBETEhev3/wKA0ngGcVfb5gAAAABJRU5ErkJggg==';
}

class ApiStatus {
  static const int successCode = 200;
  static const int unauthorizedCode = 401;
  static const int createdCode = 201;
  static const int serverErrorCode = 500;
  static const int badRequestCode = 400;
  static const int notFoundCode = 404;
}

class ListConstants {
  static const List colorTheme1 = ['#ff2c2c', '#8d8d8d', '#d6d6d6'];
  static const List colorTheme2 = ['#0082fd', '#009032', '#f8cb00', '#ed002c'];
  static const List colorTheme3 = ['#17a18e', '#ffca00', '#1aa8a8', '#8cc3f8', '#e47d36', '#ff2c2c', '#425fb4'];
  static const List colorTheme4 = ['#c7b297', '#a81a40', '#a81aa3', '#f88c8c', '#4336e4', '#17a18e', '#8bcb00'];

  static const List fontFamily = [
    'lato',
    'oswald',
    'poppins',
    'roboto',
    'openSans',
    'girassol',
    'inter',
    'lato-regular',
    'oswald-regular',
    'poppins-regular',
    'roboto-regular',
    'open_sans-regular'
  ];

  static const List<String> returnTypes = ['void', 'String', 'int', 'double', 'bool', 'Map', 'dynamic'];

  static const List<String> operations = [
    StringConstants.assignment,
    StringConstants.callApi,
    StringConstants.callFunction,
    StringConstants.computation,
    StringConstants.condition,
    StringConstants.initialization,
    StringConstants.linkPage,
    StringConstants.loop,
    StringConstants.returnValue,
    StringConstants.showPopup,
    StringConstants.submitForm
  ];

  static const List<String> compareOperators = ['==', '>=', '<=', '<', '>', '!='];
  static const List<String> andOr = ['AND', 'OR'];

  static const List<String> tableLayoutFilters = [
    'Starts With',
    'Contains',
    'Not Contains',
    'Ends With',
    'Equals',
    'Not Equals'
  ];

  static const List<String> fontWeightValues = [
    "100-Thin",
    "200-Extra light",
    "300-Light",
    "400-Normal",
    "500-Medium",
    "600-Semi Bold",
    "700-Bold",
    "800-Extra Bold",
    "900-Black"
  ];
}

enum AdminEntityAction { add, update, view, viewAccount }

enum AdminEntityType {
  importUser,
  roles,
  users,
  user,
  role,
  groups,
  ldap,
  solution,
  entity,
  tenants,
  plans,
  features,
  dataset,
  dashboard,
  passwordPolicy,
  importRole,
  manageData,
  accountLockPolicy,
  integration,
  connection,
  organizationUnits,
  categories,
  events,
  mapTemplates,
  templates,
  permissionSet,
  addKey,
  viewKey
}

class DTRTColorConstants {
  static const String titleColor = '#FF657D';
  static const String listTitle = '#323232';
  static const String footer = '#EBF0E4';
  static const String action = '#C7D4B4';
  static const int tile = 0xFF9E9E9E;
  static const int breadcrumb = 0xFF757575;
  static const int leadingInfo = 0xFFE0E0E0;
  static const int name = 0xFF000000;
  static const int snackBarText = 0xFFFFFFFF;
  static const int titleSecondary = 0xFF212121;
  static const int difference = 0xFF263238;
}

extension AdminEntityTypeUtils on AdminEntityType {
  String get value {
    switch (this) {
      case AdminEntityType.roles:
        return 'Roles';
      case AdminEntityType.users:
        return 'Users';
      case AdminEntityType.groups:
        return 'Groups';
      case AdminEntityType.ldap:
        return 'ID Providers';
      case AdminEntityType.solution:
        return 'SOLUTION';
      case AdminEntityType.entity:
        return 'Entity';
      case AdminEntityType.tenants:
        return 'Tenants';
      case AdminEntityType.features:
        return 'Features';
      case AdminEntityType.plans:
        return 'Plans';
      case AdminEntityType.permissionSet:
        return 'Permission Set';
      case AdminEntityType.dataset:
        return 'Dataset';
      case AdminEntityType.dashboard:
        return 'Dashboard';
      case AdminEntityType.passwordPolicy:
        return 'Password Policy';
      case AdminEntityType.accountLockPolicy:
        return 'Account Lock Policy';
      case AdminEntityType.integration:
        return 'Integration';
      case AdminEntityType.connection:
        return 'Connection';
      case AdminEntityType.organizationUnits:
        return 'Organization Units';
      case AdminEntityType.categories:
        return 'Categories';
      case AdminEntityType.events:
        return 'Events';
      case AdminEntityType.mapTemplates:
        return 'Map Templates';
      case AdminEntityType.templates:
        return 'Templates';
      case AdminEntityType.addKey:
        return 'Add Key';
      case AdminEntityType.viewKey:
        return 'View Keys';
    }

    return '';
  }

  String get entityValue {
    switch (this) {
      case AdminEntityType.roles:
        return 'Role';
      case AdminEntityType.users:
        return 'User';
      case AdminEntityType.groups:
        return 'Group';
      case AdminEntityType.ldap:
        return 'ID Provider';
      case AdminEntityType.tenants:
        return 'Tenant';
      case AdminEntityType.features:
        return 'Features';
      case AdminEntityType.plans:
        return 'Plans';
      case AdminEntityType.permissionSet:
        return 'Permission Sets';
      case AdminEntityType.dataset:
        return 'Datasets';
      case AdminEntityType.organizationUnits:
        return 'Organization Units';
      case AdminEntityType.importUser:
      case AdminEntityType.user:
      case AdminEntityType.role:
      case AdminEntityType.solution:
      case AdminEntityType.entity:
      case AdminEntityType.dashboard:
      case AdminEntityType.passwordPolicy:
      case AdminEntityType.importRole:
      case AdminEntityType.manageData:
      case AdminEntityType.accountLockPolicy:
      case AdminEntityType.integration:
      case AdminEntityType.connection:
        break;
    }

    return '';
  }
}

enum ManageRoleAction { add, update, view, delete, manageOwnership, manageIrDr, delegation }

enum RoleType { local, global }

extension ManageRoleActionUtils on ManageRoleAction {
  String get value {
    switch (this) {
      case ManageRoleAction.add:
        return 'Add';
      case ManageRoleAction.update:
        return 'Update';
      case ManageRoleAction.manageOwnership:
        return 'Manage Ownership';
      case ManageRoleAction.manageIrDr:
        return 'Manage Rights';
      case ManageRoleAction.delegation:
        return 'Delegations';
      case ManageRoleAction.view:
      case ManageRoleAction.delete:
        break;
    }
    return '';
  }
}

extension RoleTypeUtils on RoleType {
  String get value {
    switch (this) {
      case RoleType.global:
        return 'Global Roles';
      case RoleType.local:
        return 'Local Roles';
    }
    return '';
  }

  String get entityValue {
    switch (this) {
      case RoleType.global:
        return 'Global Role';
      case RoleType.local:
        return 'Local Role';
    }

    return '';
  }
}

enum FilterType { solution, triggerCu, entity, attributeName, attributeValue, gsiMasterId }

extension FilterTypeUtils on FilterType {
  String get value {
    switch (this) {
      case FilterType.solution:
        return 'containerCuId';
      case FilterType.gsiMasterId:
        return 'gsiMasterId';
      case FilterType.triggerCu:
        return 'triggerCUId';
      case FilterType.entity:
        return 'nslDimensions.entityName';
      case FilterType.attributeName:
        return 'nslDimensions.attributeName';
      case FilterType.attributeValue:
        return 'nslDimensions.attributeValue';
    }
    return '';
  }
}

enum TransactionCategory { all, assigned, created, escalated }

enum Languages {
  afrikkans,
  arabic,
  bengali,
  chinese,
  croatian,
  dutch,
  english,
  filipino,
  finnish,
  french,
  german,
  greek,
  gujarati,
  hausa,
  hebrew,
  hindi,
  hungarian,
  icelandic,
  indonesia,
  irish,
  italian,
  japanese,
  javanese,
  kannada,
  korean,
  malay,
  malayalam,
  marathi,
  nepali,
  norwegian,
  oriya,
  persian,
  polish,
  portuguese,
  punjabi,
  romanian,
  russian,
  sindhi,
  sinhala,
  spanish,
  swahili,
  swedish,
  tamil,
  telugu,
  thai,
  turkish,
  ukranian,
  urdu,
  vietlanguageNamese,
  yoruba
}

extension LanguageUtils on Languages {
  String get value {
    switch (this) {
      case Languages.afrikkans:
        return 'AF';
      case Languages.arabic:
        return 'AR';
      case Languages.bengali:
        return 'BN';
      case Languages.chinese:
        return 'ZH';
      case Languages.croatian:
        return 'HR';
      case Languages.dutch:
        return 'NL';
      case Languages.english:
        return 'EN';
      case Languages.filipino:
        return 'FIL';
      case Languages.finnish:
        return 'FI';
      case Languages.french:
        return 'FR';
      case Languages.german:
        return 'DE';
      case Languages.greek:
        return 'EL';
      case Languages.gujarati:
        return 'GU';
      case Languages.hausa:
        return 'HA';
      case Languages.hebrew:
        return 'HE';
      case Languages.hindi:
        return 'HI';
      case Languages.hungarian:
        return 'HU';
      case Languages.icelandic:
        return 'IS';
      case Languages.indonesia:
        return 'ID';
      case Languages.irish:
        return 'GA';
      case Languages.italian:
        return 'IT';
      case Languages.japanese:
        return 'JA';
      case Languages.javanese:
        return 'JV';
      case Languages.kannada:
        return 'KN';
      case Languages.korean:
        return 'KO';
      case Languages.malay:
        return 'MS';
      case Languages.malayalam:
        return 'ML';
      case Languages.marathi:
        return 'MR';
      case Languages.nepali:
        return 'NE';
      case Languages.norwegian:
        return 'NN';
      case Languages.oriya:
        return 'OR';
      case Languages.persian:
        return 'FA';
      case Languages.polish:
        return 'PL';
      case Languages.portuguese:
        return 'PT';
      case Languages.punjabi:
        return 'PA';
      case Languages.romanian:
        return 'RO';
      case Languages.russian:
        return 'RU';
      case Languages.sindhi:
        return 'SD';
      case Languages.sinhala:
        return 'SI';
      case Languages.spanish:
        return 'ES';
      case Languages.swahili:
        return 'SW';
      case Languages.swedish:
        return 'SV';
      case Languages.tamil:
        return 'TA';
      case Languages.telugu:
        return 'TE';
      case Languages.thai:
        return 'TH';
      case Languages.turkish:
        return 'TR';
      case Languages.ukranian:
        return 'UK';
      case Languages.urdu:
        return 'UR';
      case Languages.vietlanguageNamese:
        return 'VI';
      case Languages.yoruba:
        return 'YO';
    }
    return '';
  }

  String get languageCode {
    switch (this) {
      case Languages.afrikkans:
        return 'af';
      case Languages.arabic:
        return 'ar';
      case Languages.bengali:
        return 'bn';
      case Languages.chinese:
        return 'zh';
      case Languages.croatian:
        return 'hr';
      case Languages.dutch:
        return 'nl';
      case Languages.english:
        return 'en';
      case Languages.filipino:
        return 'fil';
      case Languages.finnish:
        return 'fi';
      case Languages.french:
        return 'fr';
      case Languages.german:
        return 'de';
      case Languages.greek:
        return 'el';
      case Languages.gujarati:
        return 'gu';
      case Languages.hausa:
        return 'ha';
      case Languages.hebrew:
        return 'he';
      case Languages.hindi:
        return 'hi';
      case Languages.hungarian:
        return 'hu';
      case Languages.icelandic:
        return 'is';
      case Languages.indonesia:
        return 'id';
      case Languages.irish:
        return 'ga';
      case Languages.italian:
        return 'it';
      case Languages.japanese:
        return 'ja';
      case Languages.javanese:
        return 'jv';
      case Languages.kannada:
        return 'kn';
      case Languages.korean:
        return 'ko';
      case Languages.malay:
        return 'ms';
      case Languages.malayalam:
        return 'ml';
      case Languages.marathi:
        return 'mr';
      case Languages.nepali:
        return 'ne';
      case Languages.norwegian:
        return 'nn';
      case Languages.oriya:
        return 'or';
      case Languages.persian:
        return 'fa';
      case Languages.polish:
        return 'pl';
      case Languages.portuguese:
        return 'pt';
      case Languages.punjabi:
        return 'pa';
      case Languages.romanian:
        return 'ro';
      case Languages.russian:
        return 'ru';
      case Languages.sindhi:
        return 'sd';
      case Languages.sinhala:
        return 'si';
      case Languages.spanish:
        return 'es';
      case Languages.swahili:
        return 'sw';
      case Languages.swedish:
        return 'sv';
      case Languages.tamil:
        return 'ta';
      case Languages.telugu:
        return 'te';
      case Languages.thai:
        return 'th';
      case Languages.turkish:
        return 'tr';
      case Languages.ukranian:
        return 'uk';
      case Languages.urdu:
        return 'ur';
      case Languages.vietlanguageNamese:
        return 'vi';
      case Languages.yoruba:
        return 'yo';
    }
    return '';
  }

  String get countryCode {
    switch (this) {
      case Languages.afrikkans:
        return 'ZA';
      case Languages.arabic:
        return 'SA';
      case Languages.bengali:
        return 'IN';
      case Languages.chinese:
        return 'CN';
      case Languages.croatian:
        return 'HR';
      case Languages.dutch:
        return 'NL';
      case Languages.english:
        return 'US';
      case Languages.filipino:
        return 'PH';
      case Languages.finnish:
        return 'FI';
      case Languages.french:
        return 'FR';
      case Languages.german:
        return 'DE';
      case Languages.greek:
        return 'GR';
      case Languages.gujarati:
        return 'IN';
      case Languages.hausa:
        return 'LATN';
      case Languages.hebrew:
        return 'IL';
      case Languages.hindi:
        return 'IN';
      case Languages.hungarian:
        return 'HU';
      case Languages.icelandic:
        return 'IS';
      case Languages.indonesia:
        return 'ID';
      case Languages.irish:
        return 'IE';
      case Languages.italian:
        return 'IT';
      case Languages.japanese:
        return 'JP';
      case Languages.javanese:
        return 'ID';
      case Languages.kannada:
        return 'IN';
      case Languages.korean:
        return 'KR';
      case Languages.malay:
        return 'MY';
      case Languages.malayalam:
        return 'IN';
      case Languages.marathi:
        return 'IN';
      case Languages.nepali:
        return 'NP';
      case Languages.norwegian:
        return 'NO';
      case Languages.oriya:
        return 'IN';
      case Languages.persian:
        return 'AF';
      case Languages.polish:
        return 'PL';
      case Languages.portuguese:
        return 'PT';
      case Languages.punjabi:
        return 'GURU';
      case Languages.romanian:
        return 'RO';
      case Languages.russian:
        return 'RU';
      case Languages.sindhi:
        return 'IN';
      case Languages.sinhala:
        return 'LK';
      case Languages.spanish:
        return 'NI';
      case Languages.swahili:
        return 'KE';
      case Languages.swedish:
        return 'SE';
      case Languages.tamil:
        return 'IN';
      case Languages.telugu:
        return 'IN';
      case Languages.thai:
        return 'TH';
      case Languages.turkish:
        return 'TR';
      case Languages.ukranian:
        return 'UA';
      case Languages.urdu:
        return 'IN';
      case Languages.vietlanguageNamese:
        return 'VN';
      case Languages.yoruba:
        return 'NG';
    }
    return '';
  }
}

class SolutionCanvasImageConstants {
  static Widget gsi = Image.asset('assets/images/icon_GSI.png', height: FontConstants.fontSizeHeading1);
  static Widget agent = Image.asset('assets/images/icon_human_agent.png', height: FontConstants.fontSizeHeading1);
  static Widget metadata =
      Image.asset('assets/images/icon_meta_data_active.png', height: FontConstants.fontSizeHeading1);
  static Widget physicalLayer =
      Image.asset('assets/images/icon_physical_layer.png', height: FontConstants.fontSizeHeading1);
  static Widget informationLayer =
      Image.asset('assets/images/icon_information_layer.png', height: FontConstants.fontSizeHeading1);
  static Widget more = Image.asset('assets/images/icon_more.png', height: FontConstants.fontSizeHeading1);
  static Widget dcd = Image.asset('assets/images/icon_dcd_outer.png', height: FontConstants.fontSizeHeading1);
  static Widget physicalLayerChildCard =
      Image.asset('assets/images/icon_entity_inner.png', height: FontConstants.fontSizeHeading1);
  static Widget informationLayerChildCard =
      Image.asset('assets/images/icon_entity_inner.png', height: FontConstants.fontSizeHeading1);
  static Widget metadataChildCard =
      Image.asset('assets/images/icon_meta_data_inactive.png', height: FontConstants.fontSizeHeading1);
  static Widget timeAndSpace =
      Image.asset('assets/images/icon_time_space_outer.png', height: FontConstants.fontSizeHeading1);
  static Widget timeAndSpaceChildCard =
      Image.asset('assets/images/icon_time_space_inner.png', height: FontConstants.fontSizeHeading1);
  static Widget cu = Image.asset('assets/images/icon_CU.png', height: FontConstants.fontSizeHeading1);
  static Widget alternateCu =
      Image.asset('assets/images/icon_alternate_CU.png', height: FontConstants.fontSizeHeading1);
  static Widget alternateCuOptions =
      Image.asset('assets/images/icon_alternate_CU_child.png', height: FontConstants.fontSizeHeading1);
  static Widget book = Image.asset('assets/images/icon_book.png', height: FontConstants.fontSizeHeading1);
  static Widget entity = Image.asset('assets/images/icon_entity.png', height: FontConstants.fontSizeHeading2);
  static Widget reservedActions =
      Image.asset('assets/images/icon_reserved_actions.png', height: FontConstants.fontSizeHeading1);
  static Widget recursiveCu =
      Image.asset('assets/images/icon_recursive_CU.png', height: FontConstants.fontSizeHeading1);
  static Widget nestedCu = Image.asset('assets/images/icon_nested_active.png', height: FontConstants.fontSizeHeading1);
  static Widget exceptionCu =
      Image.asset('assets/images/icon_exception_CU_outer.png', height: FontConstants.fontSizeHeading1);
  static Widget nslLibrary = Image.asset('assets/images/icon_nsl_library.png', height: FontConstants.fontSizeHeading1);
  static Widget myLibrary = Image.asset('assets/images/icon_library.png', height: FontConstants.fontSizeHeading1);
  static Widget collaborator = Image.asset('assets/images/icon_community.png', height: FontConstants.fontSizeHeading1);
  static Widget inOut = Image.asset('assets/images/icon_in_out.png', height: FontConstants.fontSizeHeading1);
  static Widget triggerCes = Image.asset('assets/images/icon_trigger_ces.png', height: FontConstants.fontSizeHeading1);
  static Widget dcdInner = Image.asset('assets/images/icon_dcd_inner.png', height: FontConstants.tabFontSizeHeading2);
  static Widget subAttribute =
      Image.asset('assets/images/icon_sub_attribute.png', height: FontConstants.fontSizeHeading3);
  static Widget entityHeading =
      Image.asset('assets/images/icon_entity_heading.png', height: FontConstants.fontSizeHeading1);
  static Widget exceptionCuFront =
      Image.asset('assets/images/icon_exception_CU_front.png', height: FontConstants.fontSizeHeading1);
  static Widget attribute = Image.asset('assets/images/icon_attribute.png', height: FontConstants.fontSizeHeading1);
  static Widget nestedCuFront =
      Image.asset('assets/images/icon_nested_CU_front.png', height: FontConstants.fontSizeHeading1);
  static Widget nslhubKit = Image.asset('assets/images/icon_nslhub_kit.png', height: FontConstants.fontSizeHeading1);
  static Widget reservedCu = Image.asset('assets/images/icon_reserved_cu.png', height: FontConstants.fontSizeHeading1);
  static Widget nestedEntity =
      Image.asset('assets/images/icon_nested_entity.png', height: FontConstants.fontSizeHeading1);
  static Widget admin = Image.asset('assets/images/admin.png', height: FontConstants.fontSizeHeading1);
  static Icon myCollectionsButton = Icon(const FaIcon(FontAwesomeIcons.book).icon);
}

class SolutionCanvasColorConstants {
  static const int agentCard = 0xFFF2FBF7;
  static const int metadataCard = 0xFFF5F5FF;
  static const int physicalLayerCard = 0xFFFEF9F9;
  static const int informationLayerCard = 0xFFF3F9FD;
  static const int moreCard = 0xFFF2FBF7;
  static const int dcdCard = 0xFFFFF5EE;
  static const int timeAndSpaceCard = 0xFFF2FBF7;
  static const int selectedCuColor = 0xFFD9F3E8;
  static const int selectedRightSectionColor = 0xFFBBDEFB;
  static const int nodeUiCardColor = 0xFFE8F5E9;
  static const int nodeUiArrowColor = 0xFF64B5F6;
}

class SolutionCanvasSpacingConstants {
  static const double cardWidgetColumnPadding = 8.0;
  static const double adminEntityListPadding = 12.0;
  static const double buttonIconSize = 32.0;
}

class SolutionCanvasSizeConstants {
  static const double nextButton = 18.0;
  static const double draggItemSize = 100.0;
  static const double leftPanelWidth = 281.0;
  static const double loaderSize = 130.0;
  static const double searchBarHeight = 60.0;
  static const double searchBarWidget = 230.0;
  static const double sizeConstant36 = 36.0;
  static const double sizeConstant20 = 20.0;
  static const double sizeConstant150 = 150.0;
  static const double sizeConstant55 = 55.0;
  static const double sizeConstant80 = 80.0;
  static const double customPaintCanvasSize = 600.0;
  static const double newAttributeCanvas = 560.0;
  static const double sizeConstant165 = 165.0;
  static const double sizeConstant70 = 70.0;
  static const double sizeConstant105 = 105.0;
  static const double sizeConstant95 = 95.0;
  static const double sizeConstant200 = 200.0;
  static const double sizeConstant300 = 300.0;
  static const double sizeConstant250 = 250.0;
  static const double paintStrokeWidth = 1.5;
  static const double sizeConstant30 = 30.0;
  static const double noRecordsFoundContainerSize = 500.0;
  static const double listContainerSize = 650.0;
  static const double sizeConstant400 = 400.0;
  static const double dcdExpressionButtonSize = 55.0;
  static const double dcdExpressionPadding = 120.0;
  static const double nodeUiBorderRadius = 10;
  static const double nodeUiBorderSpacing = 6.0;
  static const double nodeUiTopSpacing = 5.0;
  static const double leftRightPanelSizeFactor = 0.22;
  static const double rightPanelSearchBarWidth = 196;
  static const double sizeConstant180 = 180.0;
  static const double sizeConstant90 = 90.0;
  static const double dcdMappingCardWidthFactor = 0.55;
  static const double containerMargin = 6.0;
}

class SizeConstants {
  static const double thanksForContacting = 16.0;
  static const double containerSize600 = 600.0;
  static const double videoHeight = 200.0;
  static const double videoWidth = 500.0;
  static const double richTextEditorBoxSize = 250.0;
}

class SolutionCanvasStringConstants {
  static const String triggerCesLayer = 'TriggerCES';
  static const String embeddedGsiCuType = 'GSI';
  static const String all = 'ALL';
  static const String allEntityType = '';
  static const String publishedEntityType = 'true';
  static const String draftEntityType = 'false';
  static const String physical = 'physical';
  static const String information = 'information';
  static const String reservedActions = 'reservedActions';
  static const String triggerCes = 'triggerCES';
  static const String draft = 'DRAFT';
  static const String published = 'PUBLISHED';
  static const String entity = 'Entity';
  static const String entitySmall = 'entity';
  static const String cu = 'Cu';
  static const String gsi = 'Gsi';
  static const String reservedCu = 'ReservedCu';
  static const String sourceTf = 'TF';
  static const String readyState = 'READY';
  static const String approvedState = 'APPROVED';
  static const String allow = 'Yes';
  static const String deny = 'No';
  static const String sequentialCuType = 'Sequential';
  static const String recursiveCuType = 'Recursive';
  static const String exceptionCuType = 'Exception';
  static const String alternateCuType = 'Alternate';
  static const String nestedCuType = 'Nested';
  static const String basicCuType = 'BASIC';
  static const String itemType = 'GeneralEntity';
  static const String physicalLayerShort = 'PL';
  static const String informationLayerShort = 'IL';
  static const String nslTemplate = 'NSL_Template';
  static const String reservedCuPrefix = 'NSL_';
  static const String alternateCuCondition = 'condition';
  static const String alternateCuConditionName = 'conditionName';
  static const String inReality = 'IN REALITY';
  static const String inPotentiality = 'IN POTENTIALITY';
  static const String approved = 'Approved';
  static const String rejected = 'Rejected';
  static const String entityType = 'ENTITY';
  static const String role = 'ROLE';
  static const String user = 'USER';
  static const String essential = 'ESSENTIAL';
  static const String multivalueKeyNestedEntity = 'list';
  static const String arrival = 'ARRIVAL';
  static const String source = 'source';
  static const String target = 'target';
  static const String physicalLayer = 'Physical Layer';
  static const String informationLayer = 'Information Layer';
  static const String dcdMapping = 'DCD Mapping';
  static const String humanSmall = 'human';
  static const String humanCaps = 'Human';
  static const String machineCaps = 'Machine';
  static const String sum = 'sum';
  static const String minus = 'minus';
  static const String multiply = 'multiply';
  static const String divide = 'divide';
  static const String average = 'average';
  static const String plusSymbol = '+';
  static const String subtractSymbol = '-';
  static const String multiplySymbol = '*';
  static const String divideSymbol = '/';
  static const String averageSymbol = '%';
  static const String openBracket = '(';
  static const String closeBracket = ')';
  static const String reservedActionsSlot = 'reservedActions_SL';
  static const String slotItemsPropertyData = 'propertyData';
  static const String constant = 'CONSTANT';
  static const String regexpOperator = "r'==|>=|<=|<|>|!=|<='"; //Throwing Error when using single quotes
  static const String regexpTarget = "r'\s(==|>=|<=|<|>|!=)\s'";
  static const String regexpSource = "r'\s(==|<|>|!=|>=|<=)\s'";
  static const String gsiAttributeName = 'displayName';
  static const String bookDisplayAttributeName = 'bookDisplayName';
  static const String bookAttributeName = 'bookName';
  static const String cuDisplayAttribute = 'displayCuName';
  static const String none = 'none';
  static const String table = 'table';
  static const String card = 'card';
  static const String big = 'Big';
  static const String medium = 'Medium';
  static const String small = 'Small';
  static const String title = 'title';
  static const String page = 'page';
  static const String sort = 'sort';
  static const String filter = 'filter';
  static const String download = 'download';
  static const String eqlReservedCu = 'NSL_EQL';
  static const String sortCapital = 'SORT';
  static const String limit = 'LIMIT';
  static const String groupBy = 'GROUP';
  static const String txnGeneralEntity = 'TxnGeneralEntity';
  static const String optional = 'OPTIONAL';
  static const String negative = 'NEGATIVE';
  static const String alternativeAttribute = 'alternativeAttribute';
  static const String alternative = 'ALTERNATIVE';
  static const String hidden = 'HIDDEN';
  static const String alternativeChangeDriver = 'alternativeChangeDriver';
  static const String changeDriverType = 'changeDriverType';
  static const String configure = 'Configure';
  static const String attributes = 'Attributes';
  static const String newAttribute = 'New Attribute';
  static const String defaultUIControl = 'Default';
  static const String metaData = 'metaData';
  static const String category = 'category';
  static const String subCategory = 'subCategory';
  static const String keyWords = 'keywords';
  static const String email = 'email';
  static const String monthDayYearFormat = 'MM/dd/yyyy';
  static const String dayMonthYearFormat = 'dd/MM/yyyy';
  static const String yearMonthDay = 'yyyy/MM/dd';
  static const String twentyFourHourTimeFormat = '24-hr';
  static const String moreTab = 'More';
}

class IconConstants {
  static Icon envelope = Icon(const FaIcon(FontAwesomeIcons.envelope).icon);
  static Icon calendarWeek = Icon(const FaIcon(FontAwesomeIcons.calendarDay).icon);
  static Icon text = Icon(const FaIcon(FontAwesomeIcons.tent).icon);
  static Icon textArea = Icon(const FaIcon(FontAwesomeIcons.textHeight).icon);
  static Icon transactionExecution = Icon(const FaIcon(FontAwesomeIcons.arrowRight).icon);
  static Icon backButton = Icon(const FaIcon(FontAwesomeIcons.arrowLeft).icon);
  static Icon plus = Icon(const FaIcon(FontAwesomeIcons.plus).icon);
  static Icon dashboard = Icon(const FaIcon(FontAwesomeIcons.table).icon);
  static Icon done = Icon(const FaIcon(FontAwesomeIcons.check).icon);
  static Icon viewDetails = Icon(const FaIcon(FontAwesomeIcons.infoCircle).icon, color: const Color(0xFFFF2B2B));
  static Icon minus = Icon(const FaIcon(FontAwesomeIcons.minus).icon);
  static Icon search = Icon(const FaIcon(FontAwesomeIcons.search).icon);
  static Icon times = Icon(const FaIcon(FontAwesomeIcons.times).icon);
  static Icon typeButton = Icon(const FaIcon(FontAwesomeIcons.keyboard).icon);
  static Icon suggestionsButton = Icon(const FaIcon(FontAwesomeIcons.thumbsUp).icon);
  static Icon myCollectionsButton = Icon(const FaIcon(FontAwesomeIcons.book).icon);
  static Icon arrowRightIcon = Icon(const FaIcon(FontAwesomeIcons.arrowRight).icon);
  // static Map<String, IconData?> uiControlIcons = {
  //   'Audio': const FaIcon(FontAwesomeIcons.music).icon,
  //   'Auto Identifier': const FaIcon(FontAwesomeIcons.lightbulb).icon,
  //   'Boolean': const FaIcon(FontAwesomeIcons.toggleOn).icon,
  //   'Check box': const FaIcon(FontAwesomeIcons.box).icon,
  //   'Correlation Coefficient': const FaIcon(FontAwesomeIcons.).icon,
  //   'Currency': const FaIcon(FontAwesomeIcons.dollarSign).icon,
  //   'Current Date': const FaIcon(FontAwesomeIcons.solidCalendarDay).icon,
  //   'Current Date Time': const FaIcon(FontAwesomeIcons.solidCalendarEdit).icon,
  //   'Date': const FaIcon(FontAwesomeIcons.solidCalendarAlt).icon,
  //   'Date Range': const FaIcon(FontAwesomeIcons.solidCalendarWeek).icon,
  //   'Date Time': const FaIcon(FontAwesomeIcons.solidCalendarCheck).icon,
  //   'Decimal': const FaIcon(FontAwesomeIcons.solidDivide).icon,
  //   'Distance': const FaIcon(FontAwesomeIcons.solidArrowsH).icon,
  //   'Dropdown': const FaIcon(FontAwesomeIcons.solidCaretCircleDown).icon,
  //   'Duration': const FaIcon(FontAwesomeIcons.hourglassHalf).icon,
  //   'Email': const FaIcon(FontAwesomeIcons.at).icon,
  //   'Encrypt Text': const FaIcon(FontAwesomeIcons.solidKey).icon,
  //   'File': const FaIcon(FontAwesomeIcons.filePlus).icon,
  //   'HTML': const FaIcon(FontAwesomeIcons.code).icon,
  //   'Hyper Link': const FaIcon(FontAwesomeIcons.link).icon,
  //   'Image': const FaIcon(FontAwesomeIcons.solidFileImage).icon,
  //   'Label': const FaIcon(FontAwesomeIcons.solidTag).icon,
  //   'List Labels': const FaIcon(FontAwesomeIcons.solidThList).icon,
  //   'Location': const FaIcon(FontAwesomeIcons.mapMarker).icon,
  //   'Mean Squared Error': const FaIcon(FontAwesomeIcons.sigma).icon,
  //   'Metric': const FaIcon(FontAwesomeIcons.solidRulerVertical).icon,
  //   'Mobile Number': const FaIcon(FontAwesomeIcons.solidPhoneAlt).icon,
  //   'Moving Average': const FaIcon(FontAwesomeIcons.function).icon,
  //   'Multi Line': const FaIcon(FontAwesomeIcons.solidAlignLeft).icon,
  //   'Multi Select': const FaIcon(FontAwesomeIcons.solidTasks).icon,
  //   'Number': const FaIcon(FontAwesomeIcons.sortNumericUp).icon,
  //   'Password': const FaIcon(FontAwesomeIcons.solidLock).icon,
  //   'Payment': const FaIcon(FontAwesomeIcons.solidCreditCard).icon,
  //   'Percentile': const FaIcon(FontAwesomeIcons.solidPercent).icon,
  //   'Preview Document': const FaIcon(FontAwesomeIcons.file).icon,
  //   'Probability': const FaIcon(FontAwesomeIcons.chartBar).icon,
  //   'Progress': const FaIcon(FontAwesomeIcons.solidTasksAlt).icon,
  //   'QR Code Decoder': const FaIcon(FontAwesomeIcons.qrcode).icon,
  //   'QR Scanner': const FaIcon(FontAwesomeIcons.brackets).icon,
  //   'Quantification': const FaIcon(FontAwesomeIcons.function).icon,
  //   'Quantile': const FaIcon(FontAwesomeIcons.function).icon,
  //   'Quartile': const FaIcon(FontAwesomeIcons.function).icon,
  //   'Radio Button': const FaIcon(FontAwesomeIcons.dotCircle).icon,
  //   'Redirection': const FaIcon(FontAwesomeIcons.solidExternalLinkAlt).icon,
  //   'Rich Text': const FaIcon(FontAwesomeIcons.solidFontCase).icon,
  //   'SCORM Progress': const FaIcon(FontAwesomeIcons.thunderstorm).icon,
  //   'SCORM Video': const FaIcon(FontAwesomeIcons.solidCloudUploadAlt).icon,
  //   'Scheduler': const FaIcon(FontAwesomeIcons.solidCog).icon,
  //   'Similarity Coefficient': const FaIcon(FontAwesomeIcons.lightChartPie).icon,
  //   'Signature': const FaIcon(FontAwesomeIcons.signature).icon,
  //   'Time': const FaIcon(FontAwesomeIcons.clock).icon,
  //   'Text': const FaIcon(FontAwesomeIcons.solidText).icon,
  //   'Typeahead': const FaIcon(FontAwesomeIcons.keyboard).icon,
  //   'Variability': const FaIcon(FontAwesomeIcons.chartLine).icon,
  //   'Video': const FaIcon(FontAwesomeIcons.solidVideo).icon,
  //   'WebEx': const FaIcon(FontAwesomeIcons.solidWebcam).icon,
  //   'Weighted Average': const FaIcon(FontAwesomeIcons.function).icon,
  //   'Year Month': const FaIcon(FontAwesomeIcons.solidCalendarAlt).icon,
  //   'clickable': const FaIcon(FontAwesomeIcons.solidMousePointer).icon,
  //   'cuclock': const FaIcon(FontAwesomeIcons.solidClock).icon,
  //   'multiLinearRegression': const FaIcon(FontAwesomeIcons.function).icon,
  //   'ratioAnalysis': const FaIcon(FontAwesomeIcons.function).icon,
  //   'simpleLinearRegression': const FaIcon(FontAwesomeIcons.function).icon,
  //   'Default': const FaIcon(FontAwesomeIcons.solidInfo).icon,
  // };

// static IconData search =  const FaIcon(FontAwesomeIcons.search).icon;
  static Icon visibility = const Icon(Icons.visibility);
  static Icon visibilityOff = const Icon(Icons.visibility_off);
  static Icon qrBarcodeScanner = const Icon(Icons.qr_code_scanner_rounded);
  static Icon plusCircle = Icon(const FaIcon(FontAwesomeIcons.plusCircle).icon);
  static Icon backward = const Icon(Icons.arrow_back_ios);
  static Icon forward = const Icon(Icons.arrow_forward_ios);
  static Icon impressions = Icon(const FaIcon(FontAwesomeIcons.handPointUp).icon);
  static Icon clicks = Icon(const FaIcon(FontAwesomeIcons.bullseye).icon);
  static Icon ctr = Icon(const FaIcon(FontAwesomeIcons.percent).icon);
  static Icon solidPlus = Icon(const FaIcon(FontAwesomeIcons.circlePlus).icon, color: Colors.green.shade300);
  static Icon solidMinus = Icon(const FaIcon(FontAwesomeIcons.circleMinus).icon, color: const Color(0xFFFF2B2B));
  static Icon solidEdit = Icon(const FaIcon(FontAwesomeIcons.solidEdit).icon, size: 24.0);
  static Icon edit = Icon(const FaIcon(FontAwesomeIcons.edit).icon, color: const Color(0xFFFF2B2B));
  static Icon delete = Icon(const FaIcon(FontAwesomeIcons.trash).icon, color: const Color(0xFFFF2B2B));
  static Icon setting = const Icon(Icons.settings);
  static Icon exclamationTriangle =
      Icon(const FaIcon(FontAwesomeIcons.exclamationTriangle).icon, color: const Color(0xFFFF2B2B), size: 14.0);
  static Icon solidTrash =
      Icon(const FaIcon(FontAwesomeIcons.solidTrashCan).icon, color: const Color(0xFFFF2B2B), size: 14.0);
  static Icon trashAlt = Icon(FaIcon(FontAwesomeIcons.trashAlt).icon, color: Color(0xFFFF2B2B), size: 20.0);
  static Icon angleRightRed = Icon(const FaIcon(FontAwesomeIcons.angleRight).icon, color: const Color(0xFFFF2B2B));
  static Icon angleRight = Icon(const FaIcon(FontAwesomeIcons.angleRight).icon);
  static Icon entity = Icon(const FaIcon(FontAwesomeIcons.triangleExclamation).icon, color: Colors.pink.shade50);
  static Icon solidStar = Icon(const FaIcon(FontAwesomeIcons.solidStar).icon, color: Colors.yellow.shade800);
  static Icon solidStar16 =
      Icon(const FaIcon(FontAwesomeIcons.solidStar).icon, size: 16.0, color: Colors.yellow.shade800);
  static Icon calendar = Icon(const FaIcon(FontAwesomeIcons.calendar).icon);
  static Icon arrowDown = const Icon(Icons.arrow_drop_down);
  static Icon notify = Icon(const FaIcon(FontAwesomeIcons.bell).icon, color: const Color(ColorConstants.accentRed));
  static Widget arrowLeftBottom =
      Image.asset('assets/images/arrow-entering-into-square.png', height: FontConstants.fontSizeHeading1);
  static Icon exportSolution = Icon(const FaIcon(FontAwesomeIcons.fileExport).icon);
  static Widget relatedGsi = Image.asset('assets/images/link.png', height: FontConstants.fontSizeHeading1);
}

class ColorConstants {
  static const int primaryRed = 0xFFFF2B2B;
  static const int primaryBlack = 0xFF323232;
  static const int primaryGrey = 0xFF9D9D9C;
  static const int grey900 = 0xFF2121;
  static const int black38 = 0xFF000000;
  static const int greenAccent700 = 0xFF00C853;
  static const int slidableActionBackground = 0xFFF5F5F5;
  static const String webPrimaryWhite = '#FFFFFF';
  static const int primaryWhite = 0xFFFFFFFF;
  static const int switchActiveColor = 0xffA2B783;
  static const int grey200 = 0xFFEEEEEE;
  static const int deepPurpleAccent = 0xFF7E57C2;
  static const int amber = 0xFFFFCA28;
  static const int lightGrey = 0xFFF5F5F5;
  static const int dashboardTemplateColor1 = 0xFFC0EAD9;
  static const int dashboardTemplateColor2 = 0xFFB9D2F3;
  static const int dashboardTemplateColor3 = 0xFFCDBEDF;
  static const int dashboardTemplateColor4 = 0xFFF6CFA8;
  static const Color linkedCuColor = Color(0xffef9a9a);
  static const Color accentColorRed = Color(0xFFFF8A80);
  static const Color amberColor = Color(0xFFFFCA28);
  static const int yellow = 0xFFFFFF00;
  static const int lineGrey = 0xFF9E9E9E;
  static const int containerShadow = 0xFFE0E0E0;
  static const int nodeUiGreenShadow = 0xFFA5D6A7;
  static const int nodeUiGreenContainer = 0xFFE8F5E9;
  static const int transparent = 0x00000000;
  static const int primaryGreen = 0xFF4CAF50;
  static const int accentRed = 0xFFFF8A80;
  static const int primaryBlue = 0xFF2196F3;
  static const int blueAccent200 = 0xFF90CAF9;
  static const int grey600 = 0xFF757575;
  static const int green300 = 0xFF81C784;
  static const cC3EAEA = Color(0x66C3EAEA);
  static const cFFFFFF = Color(0xFFFFFF);
  static const c508DFF = Color(0x508DFF);
  static const int pendingMilestoneBorder = 0xFFF8B0C4;
  static const int milestoneTransaction = 0xFFFFE2EB;
  static const int completedTransaction = 0xFFEFFFF8;
  static const int completedTransactionBorder = 0xFFB3F1D0;
  static const int pendingMilestone = 0xFFFFF5F8;
  static const int greenAccent = 0xFFB9F6CA;
  static const int orangeAccent = 0xFFFFAB40;
  static const int yellowAccent600 = 0xFFFFE386;
  static const int milestoneTransactions = 0xFFEFF6FF;
  static const int milestoneTransactionsBorder = 0xFFD2E3FB;
  static const int blueAccent700 = 0xFF74A5E8;

  static const String PRIMARY_RED_STRING = '#FF2B2B';
  static const String PRIMARY_BLACK_STRING = '#323232';
  static const String PRIMARY_BLUE = '#0000FF';
  static const String GREEN = '#3CB043';
  static const String PRIMARY_ORANGE = '#FFA500';
  static const String GREY_200_STRING = '#EEEEEE';
  static const String GREY_300 = '#E0E0E0';
  static const int grey300 = 0xFFE0E0E0;
  static const String gsiCardErrorColor = '#82d6b3';
  static const Color black54 = Color(0xFF000000);
}

class FontConstants {
  static const double fontSizeSmall = 10;
  static const double fontSizePrimary = 16;
  static const double fontSizeSecondary = 14;
  static const double fontSizeCaption = 12;
  static const double fontSizeErrorText = 35;
  static const double fontSizeProfile = 40;
  static const double fontSizeHeading1 = 30;
  static const double fontSizeHeading2 = 25;
  static const double fontSizeHeading3 = 20;
  static const double fontSizeHeading4 = 18;
  static const double fontSizeHeading5 = 22;
  static const double tabFontSizeHeading1 = 48;
  static const double tabFontSizeHeading2 = 34;
  static const double tabFontSizeHeading3 = 24;
  static const double tabFontSizeHeading4 = 28;
  static const double fontSize18 = 18;
  static const double fontSizeHeading22 = 22;
}

class SpaceConstants {
  static const double appBarPreferredHeight = 50;
  static const double borderRadius4 = 4;
  static const double borderRadius5 = 5;
  static const double borderRadius10 = 10;
  static const double borderRadius30 = 30;
  static const double borderRadius40 = 40;
  static const double boxHeight10 = 10;
  static const double boxHeight32 = 32;
  static const double bottomHeight90 = 90;
  static const double boxWidth132 = 132;
  static const double cardContainerHeight500 = 500;
  static const double containerHeight3 = 3;
  static const double containerHeight50 = 50;
  static const double containerHeight60 = 60;
  static const double containerHeight70 = 70;
  static const double containerHeight80 = 80;
  static const double containerHeight100 = 100;
  static const double containerHeight120 = 120;
  static const double containerHeight200 = 200;
  static const double containerHeight132 = 132;
  static const double containerHeight150 = 150;
  static const double containerHeight170 = 170;
  static const double containerwidth180 = 180;
  static const double containerHeight400 = 400;
  static const double datasetFilterEdgeInset = 5;
  static const double dividerThickness2 = 2;
  static const double dividerThickness1 = 1;
  static const double imageHeight20 = 20;
  static const double imageHeight40 = 40;
  static const double imageHeight50 = 50;
  static const double imageWidth50 = 50;
  static const double imageHeight30 = 30;
  static const double imageWidth18 = 18;
  static const double listWidgetRowPadding = 1;
  static const double listWidgetColumnPadding = 4;
  static const double maxRadius20 = 20;
  static const double sizedBoxHeight5 = 5;
  static const double sizedBoxHeight8 = 8;
  static const double sizedBoxHeight20 = 20;
  static const double space250 = 250;
  static const double widgetMargin001 = 0.01;
  static const double widgetMargin05 = 0.50;
  static const double widgetMargin025 = 0.25;
  static const double widgetMargin04 = 0.40;
  static const double widgetMargin045 = 0.45;
  static const double widgetMargin010 = 0.10;
  static const double widgetMargin08 = 0.8;
  static const double widgetMargin01 = 0.1;
  static const double widgetMargin058 = 0.58;
  static const double widgetMargin065 = 0.65;
  static const double widgetMargin07 = 0.7;
  static const double widgetMargin1 = 1;
  static const double widgetMargin0 = 0;
  static const double widgetMargin2 = 2;
  static const double widgetMargin4 = 4;
  static const double widgetMargin8 = 8;
  static const double widgetMargin10 = 10;
  static const double widgetMargin12 = 12;
  static const double widgetMargin15 = 15;
  static const double widgetMargin16 = 16;
  static const double widgetMargin20 = 20;
  static const double widgetMargin24 = 24;
  static const double widgetMargin25 = 25;
  static const double widgetMargin30 = 30;
  static const double widgetMargin32 = 32;
  static const double widgetMargin64 = 64;
  static const double widgetMargin70 = 70;
  static const double widgetPadding4 = 4;
  static const double widgetPadding5 = 5;
  static const double WIDGET_PADDING_8 = 8;
  static const double widgetPadding10 = 10;
  static const double widgetPadding12 = 12;
  static const double WIDGET_PADDING_15 = 15;
  static const double WIDGET_PADDING_16 = 16;
  static const double WIDGET_PADDING_20 = 20;
  static const double widgetMargin3 = 3;
  static const double widgetHeight1 = 1;
  static const double menuConstraintsHeight350 = 350;
  static const double SIZED_BOX_HEIGHT_5 = 5;
  static const double SIZED_BOX_WIDTH_20 = 20;
  static const double CARD_CONTAINER_HEIGHT_500 = 500;
  static const double CONTAINER_HEIGHT_100 = 100;
  static const double WIDGET_MARGIN_20 = 20;
  static const double zeroEdge = 0;
  static const double widgetPadding035 = 0.35;
  static const int maxValueOfMinute = 59;
  static const int maxValueOfhours = 23;
  static const double containerHeight90 = 90.0;
  static const double publishdirectionneg1 = -1;
}

class LocationConstants {
  static const int currentLocationUpdateTimePeriod = 30;
}

class OpacityConstants {
  static const double dropDownValidatorUnderLineOpacity = 0.5;
  static const double milestoneTimeLineBorderLineOpacity = 0.7;
}

late DateFormat monthDayFormat;
late DateFormat hourMinFormat;
late DateFormat dateFormat;

enum ActivityType {
  userCreation,
  userDeletion,
  userUpdate,
  solutionRejected,
  solutionApproved,
  solutionPublished,
  transactionHistory,
  none,
}

enum JourneyStatus { yetToStart, inProgress, aborted, done }

extension JourneyStatusUtils on JourneyStatus {
  String get journeyStatusMessage {
    switch (this) {
      case JourneyStatus.yetToStart:
        return '';
      case JourneyStatus.aborted:
        return 'Aborted';
      case JourneyStatus.done:
        return 'Completed';
      case JourneyStatus.inProgress:
        return 'InProgress';
      default:
        return '';
    }
  }
}

extension ActivityTypeUtils on ActivityType {
  String get module {
    switch (this) {
      case ActivityType.userCreation:
        return 'Admin - Manager User';
      case ActivityType.userDeletion:
        return 'Admin - Manager User';
      case ActivityType.userUpdate:
        return 'Admin - Manager User';
      case ActivityType.solutionRejected:
        return 'Admin - Manager Solution';
      case ActivityType.solutionApproved:
        return 'Admin - Manager Solution';
      case ActivityType.solutionPublished:
        return 'Admin - Manager Solution';
      case ActivityType.transactionHistory:
        return 'Admin - Manager Transaction';
      default:
        return '';
    }
  }

  String get action {
    switch (this) {
      case ActivityType.userCreation:
        return 'Add';
      case ActivityType.userDeletion:
        return 'Delete';
      case ActivityType.userUpdate:
        return 'Modify';
      case ActivityType.solutionRejected:
        return 'Reject';
      case ActivityType.solutionApproved:
        return 'Approve';
      case ActivityType.solutionPublished:
        return 'Publish';
      case ActivityType.transactionHistory:
        return 'Transaction History';
      default:
        return '';
    }
  }

  String? get value {
    switch (this) {
      case ActivityType.userCreation:
        return 'USER_CREATION';
      case ActivityType.userDeletion:
        return 'USER_DELETION';
      case ActivityType.userUpdate:
        return 'USER_UPDATE';
      case ActivityType.solutionRejected:
        return 'SOLUTION_REJECTED';
      case ActivityType.solutionApproved:
        return 'SOLUTION_APPROVED';
      case ActivityType.solutionPublished:
        return 'SOLUTION_PUBLISHED';
      case ActivityType.transactionHistory:
        return 'TRANSACTION_HISTORY';
      default:
        return null;
    }
  }
}

class SolutionCanvasAttributeValidatorConstants {
  static const String optional = 'optional';
  static const String required = 'required';
  static const String empty = 'empty';
  static const String assertExtensionType = 'assertextensiontype';
  static const String assertNotExtensionType = 'assertnotextensiontype';
  static const String assertFalse = 'assertfalse';
  static const String assertTrue = 'asserttrue';
  static const String fileNameLengthType = 'filenamelengthtype';
  static const String fileNamePatternType = 'filenamepatterntype';
  static const String future = 'future';
  static const String length = 'length';
  static const String max = 'max';
  static const String maxFileSizeType = 'maxfilesizetype';
  static const String min = 'min';
  static const String minFileSizeType = 'minfilesizetype';
  static const String negative = 'negative';
  static const String negativeOrZero = 'negativeorzero';
  static const String notEmpty = 'notempty';
  static const String notZero = 'notzero';
  static const String past = 'past';
  static const String pastOrFuture = 'pastorfuture';
  static const String pastOrPresent = 'pastorpresent';
  static const String pattern = 'pattern';
  static const String positive = 'positive';
  static const String positiveOrZero = 'positiveorzero';
  static const String present = 'present';
  static const String presentOrFuture = 'presentorfuture';
  static const String validatorRequired = 'required';
  static const String zero = 'zero';
}

class UiElementsStringConstants {
  static const String signatureUiElement = 'signature';
  static const String dropDownUiElement = 'dropdown';
  static const String booleanUiElement = 'boolean';
  static const String currentDateTimeUiElement = 'currentdatetime';
  static const String currentDateUiElement = 'currentdate';
  static const String dateRangeUiElement = 'dateRange';
  static const String dateTimeUiElement = 'datetime';
  static const String dateUiElement = 'date';
  static const String decimalUiElement = 'decimal';
  static const String distanceUiElemet = 'distance';
  static const String durationUiElement = 'duration';
  static const String emailUiElement = 'email';
  static const String textUiElement = 'text';
  static const String multiSlctDropDownUiElement = 'multiselectdropdown';
  static const String radioButtonUiElemet = 'radioButton';
  static const String checkBoxUiElement = 'checkbox';
  static const String metricUiElement = 'metric';
  static const String currencyUiElement = 'currency';
  static const String typeAheadUiElemet = 'typeahead';
  static const String listUiElement = 'list';
  static const String imageUiElement = 'image';
  static const String videoUiElement = 'video';
  static const String audioUiElement = 'audio';
  static const String fileUiElement = 'file';
  static const String locationUiElement = 'location';
  static const String errorMessage = 'errorMessage';
  static const String unit = 'unit';
  static const String startWith = 'startWith';
  static const String endWith = 'endsWith';
  static const String regularExpression = 'regExp';
  static const String maximumLength = 'maxLength';
  static const String extension = 'extension';
  static const String valueCase = 'value';
  static const String notAfterDate = 'notAfterDate';
  static const String notBeforeDate = 'notBeforeDate';
  static const String notAfterDays = 'notAfterDays';
  static const String notBeforeDays = 'notBeforeDays';
  static const String defaultValue = 'defaultValue';
  static const String containsCase = 'contains';
  static const String dependentExpression = 'dependentExpression';
}

List<String> getOppositeConstraints(String validatorName) {
  switch (validatorName) {
    case SolutionCanvasAttributeValidatorConstants.assertExtensionType:
      return [SolutionCanvasAttributeValidatorConstants.assertNotExtensionType];
    case SolutionCanvasAttributeValidatorConstants.assertNotExtensionType:
      return [SolutionCanvasAttributeValidatorConstants.assertExtensionType];

    case SolutionCanvasAttributeValidatorConstants.assertTrue:
      return [SolutionCanvasAttributeValidatorConstants.assertFalse];
    case SolutionCanvasAttributeValidatorConstants.assertFalse:
      return [SolutionCanvasAttributeValidatorConstants.assertTrue];

    case SolutionCanvasAttributeValidatorConstants.empty:
      return [SolutionCanvasAttributeValidatorConstants.length, SolutionCanvasAttributeValidatorConstants.notEmpty];
    case SolutionCanvasAttributeValidatorConstants.length:
      return [SolutionCanvasAttributeValidatorConstants.empty, SolutionCanvasAttributeValidatorConstants.notEmpty];
    case SolutionCanvasAttributeValidatorConstants.notEmpty:
      return [SolutionCanvasAttributeValidatorConstants.empty, SolutionCanvasAttributeValidatorConstants.length];

    case SolutionCanvasAttributeValidatorConstants.future:
      return [
        SolutionCanvasAttributeValidatorConstants.past,
        SolutionCanvasAttributeValidatorConstants.present,
        SolutionCanvasAttributeValidatorConstants.pastOrFuture,
        SolutionCanvasAttributeValidatorConstants.presentOrFuture,
        SolutionCanvasAttributeValidatorConstants.pastOrPresent
      ];

    case SolutionCanvasAttributeValidatorConstants.present:
      return [
        SolutionCanvasAttributeValidatorConstants.future,
        SolutionCanvasAttributeValidatorConstants.past,
        SolutionCanvasAttributeValidatorConstants.pastOrFuture,
        SolutionCanvasAttributeValidatorConstants.presentOrFuture,
        SolutionCanvasAttributeValidatorConstants.pastOrPresent
      ];

    case SolutionCanvasAttributeValidatorConstants.past:
      return [
        SolutionCanvasAttributeValidatorConstants.future,
        SolutionCanvasAttributeValidatorConstants.present,
        SolutionCanvasAttributeValidatorConstants.pastOrFuture,
        SolutionCanvasAttributeValidatorConstants.presentOrFuture,
        SolutionCanvasAttributeValidatorConstants.pastOrPresent
      ];

    case SolutionCanvasAttributeValidatorConstants.pastOrFuture:
      return [
        SolutionCanvasAttributeValidatorConstants.future,
        SolutionCanvasAttributeValidatorConstants.past,
        SolutionCanvasAttributeValidatorConstants.present,
        SolutionCanvasAttributeValidatorConstants.presentOrFuture,
        SolutionCanvasAttributeValidatorConstants.pastOrPresent
      ];

    case SolutionCanvasAttributeValidatorConstants.presentOrFuture:
      return [
        SolutionCanvasAttributeValidatorConstants.future,
        SolutionCanvasAttributeValidatorConstants.past,
        SolutionCanvasAttributeValidatorConstants.present,
        SolutionCanvasAttributeValidatorConstants.pastOrFuture,
        SolutionCanvasAttributeValidatorConstants.pastOrPresent
      ];

    case SolutionCanvasAttributeValidatorConstants.pastOrPresent:
      return [
        SolutionCanvasAttributeValidatorConstants.future,
        SolutionCanvasAttributeValidatorConstants.past,
        SolutionCanvasAttributeValidatorConstants.present,
        SolutionCanvasAttributeValidatorConstants.pastOrFuture,
        SolutionCanvasAttributeValidatorConstants.presentOrFuture
      ];

    case SolutionCanvasAttributeValidatorConstants.pattern:
      return [SolutionCanvasAttributeValidatorConstants.empty];

    case SolutionCanvasAttributeValidatorConstants.negative:
      return [
        SolutionCanvasAttributeValidatorConstants.negativeOrZero,
        SolutionCanvasAttributeValidatorConstants.positive,
        SolutionCanvasAttributeValidatorConstants.positiveOrZero,
        SolutionCanvasAttributeValidatorConstants.zero,
        SolutionCanvasAttributeValidatorConstants.min,
        SolutionCanvasAttributeValidatorConstants.max,
        SolutionCanvasAttributeValidatorConstants.notZero
      ];

    case SolutionCanvasAttributeValidatorConstants.negativeOrZero:
      return [
        SolutionCanvasAttributeValidatorConstants.negative,
        SolutionCanvasAttributeValidatorConstants.positive,
        SolutionCanvasAttributeValidatorConstants.positiveOrZero,
        SolutionCanvasAttributeValidatorConstants.zero,
        SolutionCanvasAttributeValidatorConstants.min,
        SolutionCanvasAttributeValidatorConstants.max,
        SolutionCanvasAttributeValidatorConstants.notZero
      ];

    case SolutionCanvasAttributeValidatorConstants.notZero:
      return [
        SolutionCanvasAttributeValidatorConstants.negative,
        SolutionCanvasAttributeValidatorConstants.positive,
        SolutionCanvasAttributeValidatorConstants.positiveOrZero,
        SolutionCanvasAttributeValidatorConstants.zero,
        SolutionCanvasAttributeValidatorConstants.min,
        SolutionCanvasAttributeValidatorConstants.max,
        SolutionCanvasAttributeValidatorConstants.negativeOrZero
      ];

    case SolutionCanvasAttributeValidatorConstants.positive:
      return [
        SolutionCanvasAttributeValidatorConstants.negative,
        SolutionCanvasAttributeValidatorConstants.notZero,
        SolutionCanvasAttributeValidatorConstants.positiveOrZero,
        SolutionCanvasAttributeValidatorConstants.zero,
        SolutionCanvasAttributeValidatorConstants.min,
        SolutionCanvasAttributeValidatorConstants.max,
        SolutionCanvasAttributeValidatorConstants.negativeOrZero
      ];

    case SolutionCanvasAttributeValidatorConstants.positiveOrZero:
      return [
        SolutionCanvasAttributeValidatorConstants.negative,
        SolutionCanvasAttributeValidatorConstants.notZero,
        SolutionCanvasAttributeValidatorConstants.positive,
        SolutionCanvasAttributeValidatorConstants.zero,
        SolutionCanvasAttributeValidatorConstants.min,
        SolutionCanvasAttributeValidatorConstants.max,
        SolutionCanvasAttributeValidatorConstants.negativeOrZero
      ];

    case SolutionCanvasAttributeValidatorConstants.zero:
      return [
        SolutionCanvasAttributeValidatorConstants.negative,
        SolutionCanvasAttributeValidatorConstants.notZero,
        SolutionCanvasAttributeValidatorConstants.positive,
        SolutionCanvasAttributeValidatorConstants.positiveOrZero,
        SolutionCanvasAttributeValidatorConstants.min,
        SolutionCanvasAttributeValidatorConstants.max,
        SolutionCanvasAttributeValidatorConstants.negativeOrZero
      ];

    case SolutionCanvasAttributeValidatorConstants.min:
      return [
        SolutionCanvasAttributeValidatorConstants.negative,
        SolutionCanvasAttributeValidatorConstants.notZero,
        SolutionCanvasAttributeValidatorConstants.positive,
        SolutionCanvasAttributeValidatorConstants.positiveOrZero,
        SolutionCanvasAttributeValidatorConstants.zero,
        SolutionCanvasAttributeValidatorConstants.negativeOrZero
      ];
    case SolutionCanvasAttributeValidatorConstants.max:
      return [
        SolutionCanvasAttributeValidatorConstants.negative,
        SolutionCanvasAttributeValidatorConstants.notZero,
        SolutionCanvasAttributeValidatorConstants.positive,
        SolutionCanvasAttributeValidatorConstants.positiveOrZero,
        SolutionCanvasAttributeValidatorConstants.zero,
        SolutionCanvasAttributeValidatorConstants.negativeOrZero
      ];

    default:
      return [];
  }
}

List<Map<String, IconData?>> siteBuilderComponentsList = [
  {'Heading': const FaIcon(FontAwesomeIcons.heading).icon},
  {'Button': const FaIcon(FontAwesomeIcons.stop).icon},
  {'Icon': const FaIcon(FontAwesomeIcons.stop).icon},
  {'Image': const FaIcon(FontAwesomeIcons.image).icon}
];

class APIConstants {
  static String siteBuilderAPIBaseUrl = 'http://localhost:8080';
  static String nslBaseUrl = 'https://adapterdemo.qa3.nslhub.com';
  static String authSecret = '';
}

enum FunctionType {
  COUNT,
  SUM,
  MIN,
  MAX,
  AVG,
  TERM,
  TERM_PERCENTAGE,
  MEAN,
  MEDIAN,
  VARIANCE,
  PVARIANCE,
  STANDARDDEVIATION,
  PSTANDARDDEVIATION,
  RANGE,
  PERCENTILE,
  QUARTILE,
  QUANTILE,
  IQR,
  FREQUENCY,
  HMEAN,
  GMEAN,
  MODE,
  RANK
}

enum OperationType { AND, OR }

enum SearchOperatorType { IN, EQUALS, GT, GTE, LT, LTE, NOT_EQUALS, REGEX, CONTAINS, RANGE }

enum Type { FIELD, DATE_HISTOGRAM }