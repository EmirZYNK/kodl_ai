// lib/l10n/strings.dart

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Delegate sınıfı, her dilin kendi sınıfını yükleyeceği şekilde güncellendi.
class _L10nDelegate extends LocalizationsDelegate<L10n> {
  const _L10nDelegate();

  @override
  bool isSupported(Locale locale) {
    // Desteklenen dil kodlarının listesi
    return [
      'en', 'tr', 'zh', 'de', 'es', 'fr', 'hi', 'ar', 'pt', 'ru', 'id', 'ja'
    ].contains(locale.languageCode);
  }

  @override
  Future<L10n> load(Locale locale) {
    L10n l10n;
    switch (locale.languageCode) {
      case 'en':
        l10n = _L10nEn();
        break;
      case 'tr':
        l10n = _L10nTr();
        break;
      case 'zh':
        l10n = _L10nZh();
        break;
      case 'de':
        l10n = _L10nDe();
        break;
      case 'es':
        l10n = _L10nEs();
        break;
      case 'fr':
        l10n = _L10nFr();
        break;
      case 'hi':
        l10n = _L10nHi();
        break;
      case 'ar':
        l10n = _L10nAr();
        break;
      case 'pt':
        l10n = _L10nPt();
        break;
      case 'ru':
        l10n = _L10nRu();
        break;
      case 'id':
        l10n = _L10nId();
        break;
      case 'ja':
        l10n = _L10nJa();
        break;
      default:
        l10n = _L10nEn();
    }
    return Future.value(l10n);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<L10n> old) => false;
}


// Tüm yerelleştirme sınıfları için temel arayüz (abstract class)
abstract class L10n {
  // Mevcut Metinler
  String get appTitle;
  String get coursesTitle;
  String get pythonDescription;
  String get javascriptDescription;
  String get javaDescription;
  String get cDescription;
  String get cplusplusDescription;
  String get kotlinDescription;
  String get htmlCssDescription;
  String get htmlDescription;
  String get cssDescription;
  String get sqlDescription;
  String get requiresHtmlKnowledge;
  String get availableSoon;
  String get taglineBeginnerFriendly;
  String get taglineLanguageOfTheWeb;
  String get taglineEnterprisePower;
  String get taglineHighPerformance;
  String get taglineSystemLanguage;
  String get taglineModernAndroid;
  String get continueButton;
  String get challengeArenaTitle;
  String get dailyChallengeTitle;
  String get dailyChallengeCompletedTitle;
  String get dailyChallengeCompletedSubtitle;
  String get nextChallengeCountdown;
  String get miniProjectsTitle;
  String get miniProjectsSubtitle;
  String get challengeLoadError;
  String get unknownQuestionError;


  // YENİ EKLENEN METİNLER
  // AI Chat Ekranı
  String get aiWelcomeMessage;
  String get aiGenericError;
  String get aiMessageTooLong;
  String get aiMessageTooShort;
  String get aiAssistantTitle;
  String get getPremium;
  String remainingUses(int count);
  String nextUse(String time);
  String get typeAMessage;

  // AI Compiler Ekranı
  String get clickAiAnalysis;
  String get codeTooLong;
  String analysisCodeTooLong(int maxChars);
  String get aiCompilerTitle;
  String get compilerTab;
  String get outputTab;
  String get writeYourCodeHere;
  String remainingUsesShort(int count);
  String nextUseShort(String time);
  String get outputTitle;
  String get noOutputYet;
  String get aiAnalysisTitle;
  String get aiAssistantButton;
  String get aiAnalysisButton;

  // Yorumlar Ekranı
  String get commentsTitle;
  String get beTheFirstToComment;
  String get writeYourComment;

  // Topluluk Ekranı
  String get createNewPostTooltip;
  String get communityTitle;
  String get feedTab;
  String get leaderboardTab;
  String errorPrefix(String error);
  String get noPostsYet;
  String get noDataFound;
  // YENİ EKLENEN TOPLULUK METİNLERİ
  String get leaderboardTitle;
  String yourRank(int rank);
  String get tapForFullLeaderboard;


  // Gönderi Oluşturma Ekranı
  String get createNewPostTitle;
  String get postContentCannotBeEmpty;
  String get whatAreYouThinking;
  String get postContentHint;
  String get codeSnippetOptional;
  String get pasteYourCodeHere;

  // Ana Ekran (Bottom Nav)
  String get learnLabel;
  String get compilerLabel;
  String get communityLabel;
  String get profileLabel;

  // Ders Tamamlama Ekranı
  String get congratulations;
  String get lessonCompleteSubtitle;
  String get finishAndReturnButton;

  // Ders Ekranı
  String get lessonStartsWithQuiz;
  String get tapToContinue;

  // Profil Ekranı
  String get profileLoadError;
  String get deletePostTitle;
  String get deletePostConfirmation;
  String get cancel;
  String get delete;
  String get postDeletedSuccess;
  String postDeleteError(String error);
  String accountDeleteError(String error);
  String get deleteAccountTitle;
  String get deleteAccountConfirmation;
  String get deleteAccountButton;
  String get settingsTitle;
  String get defaultUsername;
  String levelAndXp(int level, String xp);
  String get followers;
  String get following;
  String get myPosts;
  String get postsLoadError;
  String get noPostsYetProfile;
  String get freeUser;
  String get streak;

  // Proje Tamamlama Ekranı
  String projectFinalCodeTitle(String title);
  String get projectCompleteTitle;
  String get projectCompleteSubtitle;
  String get awesomeReturnButton;

  // Proje Ekranı
  String get completeProjectButton;

  // Quiz Ekranı
  String questionProgress(int current, int total);
  String get wrongAnswerTryAgain;
  String get skipButton;
  String get tryAgainButton;
  String get submitButton;

  // Dil Öneri Ekranı
  String suggestionWelcome(String name);
  String get yourSuggestedLanguageIs;
  String startWithSuggestedLanguage(String language);
  String get chooseAnotherLanguage;

  // Kullanıcı Bilgi Ekranı
  String get pleaseEnterYourName;
  String get pleaseSelectYourKnowledge;
  String get pleaseSelectYourGoal;
  String get buddy;
  String get whatsYourName;
  String get typeNameHere;
  String get howDoYouRateYourKnowledge;
  String get knowledgeLevelNone;
  String get knowledgeLevelBasic;
  String get knowledgeLevelIntermediate;
  String get whatIsYourGoal;
  String get goalWeb;
  String get goalMobile;
  String get goalGame;
  String get goalJustLearning;
  String get finishButton;

  // Post Card (Gönderi Kartı)
  String get followingStatus;
  String get followButton;
  String likeCount(int count);
  String commentCount(int count);
  String get addCommentButton;
  String yearsAgo(int count);
  String monthsAgo(int count);
  String weeksAgo(int count);
  String daysAgo(int count);
  String hoursAgo(int count);
  String minutesAgo(int count);
  String get justNow;

  // Premium Popup
  String get pricingLoadError;
  String get somethingWentWrong;
  String get premiumBenefit1;
  String get premiumBenefit2;
  String get premiumBenefit3;
  String get monthly;
  String get yearly;
  String get startNow;
  String get saveAndStart;
  String get paymentDisclaimer;

  // WELCOME SCREEN YENİ EKLENEN METİNLER
  String get welcomeSubtitle;
  String get continueWithGoogle;
  String get continueAsGuest;

  // PRIVACY POLICY EKRANI YENİ EKLENEN METİNLER
  String get privacyPolicyTitle;
  String get privacyPolicyContent;
  String get acceptPrivacyPolicy;
  String get declinePrivacyPolicy;
  String get privacyDeclinedMessage;

  // SAYFAYI GÖRMEK İÇİN GİRİŞ YAP METİNLERİ
  String get loginForThisFeature;
  String get loginForThisFeatureSubtitle;

  // GİRİŞ YÜKLEME EKRANI
  String get welcomeTitle;
  String get loggingIn;


  // YENİ ANASAYFA EKRANI
  String get featuredPythonTitle;
  String get featuredPythonSubtitle;
  String get featuredAiTitle;
  String get featuredAiSubtitle;
  String get chatNow;
  String get featuredJavaTitle;
  String get featuredJavaSubtitle;
  String get categoryWebFrontend;
  String get categoryWebBackend;
  String get categoryMobileAndroid;
  String get categorySystemPerformance;
  String get categoryDataScienceAI;
  String get categoryDatabase;
  String get comingSoon;


  static const LocalizationsDelegate<L10n> delegate = _L10nDelegate();
  static L10n of(BuildContext context) {
    return Localizations.of<L10n>(context, L10n) ?? _L10nEn();
  }
}

// =============================================================================
// DİL ÇEVİRİ SINIFLARI
// =============================================================================

// İngilizce (EN)
class _L10nEn implements L10n {
  @override String get appTitle => 'Learn to Code';
  @override String get coursesTitle => 'Courses';
  @override String get pythonDescription => 'General purpose, data science, artificial intelligence';
  @override String get javascriptDescription => 'Web development (frontend/backend)';
  @override String get javaDescription => 'Android, enterprise applications';
  @override String get cDescription => 'System programming, embedded systems';
  @override String get cplusplusDescription => 'Game development, high-performance software';
  @override String get kotlinDescription => 'Modern Android development';
  @override String get htmlCssDescription => 'Basic structure and style of web pages';
  @override String get htmlDescription => 'The basic building block and skeleton of web pages';
  @override String get cssDescription => 'The art of giving style and appearance to web pages';
  @override String get sqlDescription => 'Database management and query language';
  @override String get requiresHtmlKnowledge => 'Requires HTML knowledge';
  @override String get availableSoon => 'Available Soon';
  @override String get taglineBeginnerFriendly => 'Beginner Friendly';
  @override String get taglineLanguageOfTheWeb => 'Language of the Web';
  @override String get taglineEnterprisePower => 'Enterprise Power';
  @override String get taglineHighPerformance => 'High Performance';
  @override String get taglineSystemLanguage => 'System Language';
  @override String get taglineModernAndroid => 'Modern Android';
  @override String get continueButton => 'Continue';
  @override String get challengeArenaTitle => 'Code Arena';
  @override String get dailyChallengeTitle => 'Daily Challenge';
  @override String get dailyChallengeCompletedTitle => 'You have completed the daily challenge!';
  @override String get dailyChallengeCompletedSubtitle => 'Great job! Come back tomorrow for a new question.';
  @override String get nextChallengeCountdown => 'TIME UNTIL NEXT CHALLENGE:';
  @override String get miniProjectsTitle => 'Mini Projects';
  @override String get miniProjectsSubtitle => 'Use what you\'ve learned to create a concrete and tangible result!';
  @override String get challengeLoadError => 'Failed to load challenge question.';
  @override String get unknownQuestionError => 'Unknown question type.';
  @override String get pricingInfoLoadError => 'Failed to load pricing information. Please try again.';
  @override String get aiWelcomeMessage => 'Hello! I\'m here to help you on your coding journey. Do you have a topic in mind, want to practice, or would you like me to ask you some questions?';
  @override String get aiGenericError => 'Sorry, an error occurred. Please try again.';
  @override String get aiMessageTooLong => 'Your message is too long. Please use a maximum of 2000 characters.';
  @override String get aiMessageTooShort => 'Please ask a more descriptive question (at least 15 characters).';
  @override String get aiAssistantTitle => 'AI Assistant';
  @override String get getPremium => 'Get Premium';
  @override String remainingUses(int count) => 'Remaining Uses: $count';
  @override String nextUse(String time) => 'Next Use: $time';
  @override String get typeAMessage => 'Type a message...';
  @override String get clickAiAnalysis => 'Click the "AI Analysis" button to see the results.';
  @override String get codeTooLong => '// Code Too Long!';
  @override String analysisCodeTooLong(int maxChars) => 'The code you submitted for analysis is too long. Please submit code with a maximum of $maxChars characters.';
  @override String get aiCompilerTitle => 'AI Compiler';
  @override String get compilerTab => 'Compiler';
  @override String get outputTab => 'Output';
  @override String get writeYourCodeHere => 'Write your code here...';
  @override String remainingUsesShort(int count) => '($count uses left)';
  @override String nextUseShort(String time) => '($time)';
  @override String get outputTitle => 'Output:';
  @override String get noOutputYet => '// No output yet.';
  @override String get aiAnalysisTitle => 'AI Analysis:';
  @override String get aiAssistantButton => 'AI Assistant';
  @override String get aiAnalysisButton => 'AI Analysis';
  @override String get commentsTitle => 'Comments';
  @override String get beTheFirstToComment => 'Be the first to comment!';
  @override String get writeYourComment => 'Write your comment...';
  @override String get createNewPostTooltip => 'Create New Post';
  @override String get communityTitle => 'Community';
  @override String get feedTab => 'Feed';
  @override String get leaderboardTab => 'Leaderboard';
  @override String errorPrefix(String error) => 'Error: $error';
  @override String get noPostsYet => 'No posts yet.\nBe the first to create one!';
  @override String get noDataFound => 'No data found.';
  // YENİ EKLENEN TOPLULUK METİNLERİ
  @override String get leaderboardTitle => 'Leaderboard';
  @override String yourRank(int rank) => 'Your Rank: $rank';
  @override String get tapForFullLeaderboard => 'Tap for full leaderboard';
  @override String get createNewPostTitle => 'Create New Post';
  @override String get postContentCannotBeEmpty => 'Post content cannot be empty.';
  @override String get whatAreYouThinking => 'What are you thinking?';
  @override String get postContentHint => 'Write your question or project description here...';
  @override String get codeSnippetOptional => 'Code Snippet (Optional)';
  @override String get pasteYourCodeHere => 'Paste your code here...';
  @override String get learnLabel => 'Learn';
  @override String get compilerLabel => 'Compiler';
  @override String get communityLabel => 'Community';
  @override String get profileLabel => 'Profile';
  @override String get congratulations => 'Congratulations!';
  @override String get lessonCompleteSubtitle => 'You have successfully completed this lesson. You\'ve learned new things and taken another step forward.';
  @override String get finishAndReturnButton => 'Finish & Return';
  @override String get lessonStartsWithQuiz => 'This lesson starts directly with questions.\nClick "Continue" when you\'re ready!';
  @override String get tapToContinue => 'Tap to continue';
  @override String get profileLoadError => 'Failed to load profile.';
  @override String get deletePostTitle => 'Delete Post';
  @override String get deletePostConfirmation => 'Are you sure you want to permanently delete this post?';
  @override String get cancel => 'Cancel';
  @override String get delete => 'Delete';
  @override String get postDeletedSuccess => 'Post successfully deleted.';
  @override String postDeleteError(String error) => 'Error deleting post: $error';
  @override String accountDeleteError(String error) => 'An error occurred while deleting the account: $error';
  @override String get deleteAccountTitle => 'Are You Sure You Want to Delete Your Account?';
  @override String get deleteAccountConfirmation => 'This action cannot be undone. All your progress, XP, and data will be permanently deleted.';
  @override String get deleteAccountButton => 'Delete Account';
  @override String get settingsTitle => 'Settings';
  @override String get defaultUsername => 'User';
  @override String levelAndXp(int level, String xp) => 'Lvl $level - $xp XP';
  @override String get followers => 'Followers';
  @override String get following => 'Following';
  @override String get myPosts => 'My Posts';
  @override String get postsLoadError => 'Could not load posts.';
  @override String get noPostsYetProfile => 'You have no posts yet.';
  @override String get freeUser => 'Free User';
  @override String get streak => 'Streak';
  @override String projectFinalCodeTitle(String title) => '$title - Final Code';
  @override String get projectCompleteTitle => 'Congratulations, Project Complete!';
  @override String get projectCompleteSubtitle => 'Here is the final code when all the steps are combined:';
  @override String get awesomeReturnButton => 'Awesome! Go Back';
  @override String get completeProjectButton => 'Complete Project & See Final Code';
  @override String questionProgress(int current, int total) => 'Question $current / $total';
  @override String get wrongAnswerTryAgain => 'Wrong answer, try again!';
  @override String get skipButton => 'Skip';
  @override String get tryAgainButton => 'Try Again';
  @override String get submitButton => 'Submit';
  @override String suggestionWelcome(String name) => 'Awesome, $name!';
  @override String get yourSuggestedLanguageIs => 'Your most suitable starting language is:';
  @override String startWithSuggestedLanguage(String language) => 'Yes, start with $language';
  @override String get chooseAnotherLanguage => 'I want to choose a different language';
  @override String get pleaseEnterYourName => 'Please enter your name.';
  @override String get pleaseSelectYourKnowledge => 'Please select your knowledge level.';
  @override String get pleaseSelectYourGoal => 'Please select your goal.';
  @override String get buddy => 'Buddy';
  @override String get whatsYourName => 'Hello! \nWhat\'s your name?';
  @override String get typeNameHere => 'Type your name here';
  @override String get howDoYouRateYourKnowledge => 'How would you rate your programming knowledge?';
  @override String get knowledgeLevelNone => 'I don\'t know anything';
  @override String get knowledgeLevelBasic => 'I know a little';
  @override String get knowledgeLevelIntermediate => 'I want to improve myself';
  @override String get whatIsYourGoal => 'What do you want to do with code?';
  @override String get goalWeb => 'Build a website';
  @override String get goalMobile => 'Develop a mobile app';
  @override String get goalGame => 'Make a game';
  @override String get goalJustLearning => 'Just for learning';
  @override String get finishButton => 'Finish';
  @override String get followingStatus => 'Following';
  @override String get followButton => 'Follow';
  @override String likeCount(int count) => '$count ${Intl.plural(count, one: 'like', other: 'likes')}';
  @override String commentCount(int count) => '$count ${Intl.plural(count, one: 'Comment', other: 'Comments')}';
  @override String get addCommentButton => 'Add Comment';
  @override String yearsAgo(int count) => '${count}y ago';
  @override String monthsAgo(int count) => '${count}mo ago';
  @override String weeksAgo(int count) => '${count}w ago';
  @override String daysAgo(int count) => '${count}d ago';
  @override String hoursAgo(int count) => '${count}h ago';
  @override String minutesAgo(int count) => '${count}m ago';
  @override String get justNow => 'just now';
  @override String get pricingLoadError => 'Failed to load pricing information. Please try again.';
  @override String get somethingWentWrong => 'Something went wrong.';
  @override String get premiumBenefit1 => 'Remove restrictions with unlimited lesson access, get instant access to all content.';
  @override String get premiumBenefit2 => 'Enjoy much higher usage limits for the AI Assistant and AI Compiler.';
  @override String get premiumBenefit3 => 'Earn special achievement certificates for every lesson you complete and display them on your profile.';
  @override String get monthly => 'MONTHLY';
  @override String get yearly => 'YEARLY';
  @override String get startNow => 'Start Now';
  @override String get saveAndStart => 'Save & Start';
  @override String get paymentDisclaimer => 'Payments will be charged to your app store account. Subscriptions automatically renew unless canceled at least 24 hours before the end of the current period.';

  // WELCOME SCREEN YENİ EKLENEN METİNLER
  @override String get welcomeSubtitle => 'Are you ready to take your first step into the world of code?';
  @override String get continueWithGoogle => 'Continue with Google';
  @override String get continueAsGuest => 'Continue without signing in';

  @override
  String numberOfLessons(int count) => '$count ${Intl.plural(count, one: 'lesson', other: 'lessons')}';


  @override String get privacyPolicyTitle => 'Privacy Policy';
  @override
  String get privacyPolicyContent => '''
This Privacy Policy describes how your information is collected, used, and shared by ENEM SOFTWARE ("we" or "us") when you use our "Codein" ("Service") mobile application.

1. Information We Collect

a. Information You Provide Directly:
   - Account Information: When you create an account, you provide a username and optionally link a Google account. We collect your User ID, Username, and a unique User Tag.
   - Profile Information: Your Experience Points (XP), Level, Follower Count, and Following Count are stored as part of your profile.
   - Initial Survey Responses: Your answers to questions about your knowledge level and learning goals during the initial setup are collected.
   - Community Content: Any posts you create (content, code snippets, language choice), comments you make, and interactions (likes, follows).
   - AI Interactions: Chat messages you send to the AI Assistant and code snippets you submit to the AI Compiler.

b. Information Collected Automatically:
   - Usage Data: We collect information about your interactions with the Service, such as completed lessons, quiz results, accessed courses, duration of use, and AI feature usage (usage count, last reset timestamp).
   - Device Information: We may collect device-specific information (such as your mobile device ID, operating system, and IP address) for security and service optimization purposes.
   - Activity Logs: Your daily activity dates for streak tracking.
   - Last Used Code: The last code snippet you wrote in the AI Compiler is saved locally on your device for convenience.

2. How We Use Your Information

We use the collected information for various purposes, including:
   - To provide, maintain, and improve our Service, including core learning features and community interactions.
   - To personalize your learning experience and recommend relevant content.
   - To manage your user account, track your progress (XP, level, completed lessons, streaks).
   - To enable and enhance community features like post creation, commenting, liking, and following.
   - To provide AI assistance (chat and code analysis) and manage usage limits for free users.
   - To ensure the security and integrity of the Service and prevent fraudulent activities.
   - To comply with legal obligations.

3. How We Share Your Information

We may share your information with:
   - Supabase: Our backend service provider that stores all your account data, profile information, community content, and AI usage logs.
   - Google Gemini API: Your chat messages and code snippets are sent to Google's AI service for processing and to generate a response.
   - Other Users: Your username, user tag, XP, level, followers/following, and your public community posts/comments are visible to other users within the app.
   - Legal Requirements: We may disclose your information where required by law or in response to valid requests by public authorities.
   - Business Transfers: In the event of a merger, acquisition, or asset sale, your information may be transferred.

We do not sell your personal data to third parties.

4. Data Security

We implement reasonable security measures (e.g., data encryption and access controls via Supabase) designed to protect your information from unauthorized access, alteration, disclosure, or destruction.

5. Data Retention

We retain your personal information for as long as necessary to provide the Service, comply with our legal obligations, resolve disputes, and enforce our agreements. You have the right to request the deletion of your account.

6. Your Rights

You have certain rights regarding your personal information, including:
   - Access: Request a copy of the personal data we hold about you.
   - Rectification: Request correction of inaccurate or incomplete personal data.
   - Deletion: Request the deletion of your account and associated personal data (this can be initiated from the Profile Screen settings).
   - Objection: Object to our processing of your personal data.

To exercise any of these rights, please contact us at enemsoft@gmail.com.

7. Third-Party Services

Our Service relies on third-party services like Supabase and Google Gemini. The use of data by these services is governed by their own privacy policies. We are not responsible for the privacy practices of these third-party services.

8. Changes to This Privacy Policy

We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page. You are advised to review this Privacy Policy periodically for any changes.

9. Contact Us

If you have any questions about this Privacy Policy, please contact us:
   - By email: enemsoft@gmail.com

By continuing to use the Service, you acknowledge that you have read and understood this Privacy Policy.
''';
  @override String get acceptPrivacyPolicy => 'Accept and Continue';
  @override String get declinePrivacyPolicy => 'Decline and Exit';
  @override String get privacyDeclinedMessage => 'You must accept the privacy policy to use the app.';

  @override
  String get loginForThisFeature => 'You Must Log In for This Feature';
  @override
  String get loginForThisFeatureSubtitle => 'Please log in with your account to join the community, use the AI assistant, and see your profile.';

  @override
  String get welcomeTitle => 'Hello!';

  @override
  String get loggingIn => 'Logging in...';


  @override String get featuredPythonTitle => 'Start with Python';
  @override String get featuredPythonSubtitle => 'Start your journey with the most popular language of artificial intelligence and data science. Your first step into programming starts here.';
  @override String get featuredAiTitle => 'Consult the AI Assistant';
  @override String get featuredAiSubtitle => 'Did you encounter an error while coding or is there a concept you don\'t understand? Your AI-powered assistant is just a click away.';
  @override String get chatNow => 'Chat Now';
  @override String get featuredJavaTitle => 'Master Java';
  @override String get featuredJavaSubtitle => 'Master the language that powers enterprise-level systems and Android applications. Build powerful, scalable solutions with Java today.';

  @override String get categoryWebFrontend => 'Web Development: Frontend';
  @override String get categoryWebBackend => 'Web Development: Backend';
  @override String get categoryMobileAndroid => 'Mobile Development (Android)';
  @override String get categorySystemPerformance => 'System Programming and High Performance';
  @override String get categoryDataScienceAI => 'Data Science, Artificial Intelligence, and Automation';
  @override String get categoryDatabase => 'Database Management';
  @override String get comingSoon => 'Coming Soon';
}

// Türkçe (TR)
class _L10nTr implements L10n {
  @override String get appTitle => 'Kod Öğren';
  @override String get coursesTitle => 'Kurslar';
  @override String get pythonDescription => 'Genel amaç, veri bilimi, yapay zeka';
  @override String get javascriptDescription => 'Web geliştirme (frontend/backend)';
  @override String get javaDescription => 'Android, kurumsal uygulamalar';
  @override String get cDescription => 'Sistem programlama, gömülü sistemler';
  @override String get cplusplusDescription => 'Oyun geliştirme, performanslı yazılımlar';
  @override String get kotlinDescription => 'Modern Android geliştirme';
  @override String get htmlCssDescription => 'Web sayfalarının temel yapısı ve stili';
  @override String get htmlDescription => 'Web sayfalarının temel yapı taşı ve iskeleti';
  @override String get cssDescription => 'Web sayfalarına stil ve görünüm kazandırma sanatı';
  @override String get sqlDescription => 'Veritabanlarını yönetme ve sorgulama dili';
  @override String get requiresHtmlKnowledge => 'HTML bilgisi gerektirir';
  @override String get availableSoon => 'Yakında Mevcut';
  @override String get taglineBeginnerFriendly => 'Başlangıç Dostu';
  @override String get taglineLanguageOfTheWeb => 'Web\'in Dili';
  @override String get taglineEnterprisePower => 'Kurumsal Güç';
  @override String get taglineHighPerformance => 'Yüksek Performans';
  @override String get taglineSystemLanguage => 'Sistem Dili';
  @override String get taglineModernAndroid => 'Modern Android';
  @override String get continueButton => 'Devam Et';
  @override String get challengeArenaTitle => 'Kod Arenası';
  @override String get dailyChallengeTitle => 'Günün Mücadelesi';
  @override String get dailyChallengeCompletedTitle => 'Günün mücadelesini tamamladın!';
  @override String get dailyChallengeCompletedSubtitle => 'Harika iş! Yarın yeni bir soru için tekrar gel.';
  @override String get nextChallengeCountdown => 'SONRAKİ MÜCADELEYE KALAN SÜRE:';
  @override String get miniProjectsTitle => 'Mini Projeler';
  @override String get miniProjectsSubtitle => 'Öğrendiklerini kullanarak somut ve elle tutulur bir sonuç ortaya çıkar!';
  @override String get challengeLoadError => 'Mücadele sorusu yüklenemedi.';
  @override String get unknownQuestionError => 'Bilinmeyen soru tipi.';
  @override String get pricingInfoLoadError => 'Fiyat bilgisi yüklenemedi. Lütfen tekrar deneyin.';
  @override String get aiWelcomeMessage => 'Merhaba! Kodlama yolculuğunda sana yardım etmek için buradayım. Aklına takılan bir konu mu var, pratik mi yapmak istersin, yoksa sana sorular sormamı mı istersin?';
  @override String get aiGenericError => 'Üzgünüm, bir hata oluştu. Lütfen tekrar dene.';
  @override String get aiMessageTooLong => 'Mesajınız çok uzun. Lütfen en fazla 2000 karakter kullanın.';
  @override String get aiMessageTooShort => 'Lütfen daha açıklayıcı bir soru sorun (en az 15 karakter).';
  @override String get aiAssistantTitle => 'AI Asistan';
  @override String get getPremium => 'Premium Al';
  @override String remainingUses(int count) => 'Kalan Hak: $count';
  @override String nextUse(String time) => 'Sonraki Hak: $time';
  @override String get typeAMessage => 'Bir mesaj yaz...';
  @override String get clickAiAnalysis => 'Sonuçları görmek için "AI Analiz" butonuna tıkla.';
  @override String get codeTooLong => '// Kod Çok Uzun!';
  @override String analysisCodeTooLong(int maxChars) => 'Analiz için gönderdiğiniz kod çok uzun. Lütfen en fazla $maxChars karakter uzunluğunda kod gönderin.';
  @override String get aiCompilerTitle => 'AI Derleyici';
  @override String get compilerTab => 'Derleyici';
  @override String get outputTab => 'Çıktı';
  @override String get writeYourCodeHere => 'Kodunu buraya yaz...';
  @override String remainingUsesShort(int count) => '($count hak kaldı)';
  @override String nextUseShort(String time) => '($time)';
  @override String get outputTitle => 'Çıktı:';
  @override String get noOutputYet => '// Henüz bir çıktı yok.';
  @override String get aiAnalysisTitle => 'AI Analizi:';
  @override String get aiAssistantButton => 'AI Asistan';
  @override String get aiAnalysisButton => 'AI Analiz';
  @override String get commentsTitle => 'Yorumlar';
  @override String get beTheFirstToComment => 'İlk yorumu sen yap!';
  @override String get writeYourComment => 'Yorumunu yaz...';
  @override String get createNewPostTooltip => 'Yeni Gönderi Oluştur';
  @override String get communityTitle => 'Topluluk';
  @override String get feedTab => 'Akış';
  @override String get leaderboardTab => 'Liderlik Tablosu';
  @override String errorPrefix(String error) => 'Hata: $error';
  @override String get noPostsYet => 'Henüz hiç gönderi yok.\nİlk gönderiyi sen oluştur!';
  @override String get noDataFound => 'Veri bulunamadı.';
  // YENİ EKLENEN TOPLULUK METİNLERİ
  @override String get leaderboardTitle => 'Liderlik Tablosu';
  @override String yourRank(int rank) => 'Sıranız: $rank';
  @override String get tapForFullLeaderboard => 'Detaylı liderlik tablosu için dokunun';
  @override String get createNewPostTitle => 'Yeni Gönderi Oluştur';
  @override String get postContentCannotBeEmpty => 'Gönderi içeriği boş olamaz.';
  @override String get whatAreYouThinking => 'Ne düşünüyorsun?';
  @override String get postContentHint => 'Sorunu veya projenin açıklamasını buraya yaz...';
  @override String get codeSnippetOptional => 'Kod Parçacığı (İsteğe Bağlı)';
  @override String get pasteYourCodeHere => 'Kodunu buraya yapıştır...';
  @override String get learnLabel => 'Öğren';
  @override String get compilerLabel => 'Derleyici';
  @override String get communityLabel => 'Topluluk';
  @override String get profileLabel => 'Profil';
  @override String get congratulations => 'Tebrikler!';
  @override String get lessonCompleteSubtitle => 'Bu dersi başarıyla tamamladın. Yeni bilgiler öğrendin ve bir adım daha ilerledin.';
  @override String get finishAndReturnButton => 'Dersi Bitir ve Geri Dön';
  @override String get lessonStartsWithQuiz => 'Bu ders doğrudan sorularla başlıyor.\nHazır olduğunda "Devam Et" butonuna tıkla!';
  @override String get tapToContinue => 'Devam etmek için dokun';
  @override String get profileLoadError => 'Profil yüklenemedi.';
  @override String get deletePostTitle => 'Gönderiyi Sil';
  @override String get deletePostConfirmation => 'Bu gönderiyi kalıcı olarak silmek istediğine emin misin?';
  @override String get cancel => 'İptal';
  @override String get delete => 'Sil';
  @override String get postDeletedSuccess => 'Gönderi başarıyla silindi.';
  @override String postDeleteError(String error) => 'Gönderi silinirken hata: $error';
  @override String accountDeleteError(String error) => 'Hesap silinirken bir hata oluştu: $error';
  @override String get deleteAccountTitle => 'Hesabını Silmek İstediğine Emin Misin?';
  @override String get deleteAccountConfirmation => 'Bu işlem geri alınamaz. Tüm ilerlemen, XP puanların ve verilerin kalıcı olarak silinecektir.';
  @override String get deleteAccountButton => 'Hesabı Sil';
  @override String get settingsTitle => 'Ayarlar';
  @override String get defaultUsername => 'Kullanıcı';
  @override String levelAndXp(int level, String xp) => 'Sv ${level} - ${xp} XP';
  @override String get followers => 'Takipçi';
  @override String get following => 'Takip';
  @override String get myPosts => 'Gönderilerim';
  @override String get postsLoadError => 'Gönderiler yüklenemedi.';
  @override String get noPostsYetProfile => 'Henüz hiç gönderin yok.';
  @override String get freeUser => 'Ücretsiz Kullanıcı';
  @override String get streak => 'Seri';
  @override String projectFinalCodeTitle(String title) => '$title - Final Kodu';
  @override String get projectCompleteTitle => 'Tebrikler, Proje Tamamlandı!';
  @override String get projectCompleteSubtitle => 'İşte tüm adımları birleştirdiğinde ortaya çıkan final kodu:';
  @override String get awesomeReturnButton => 'Harika! Geri Dön';
  @override String get completeProjectButton => 'Projeyi Tamamla ve Son Kodu Gör';
  @override String questionProgress(int current, int total) => 'Soru $current / $total';
  @override String get wrongAnswerTryAgain => 'Yanlış cevap, tekrar dene!';
  @override String get skipButton => 'Atla';
  @override String get tryAgainButton => 'Tekrar Dene';
  @override String get submitButton => 'Gönder';
  @override String suggestionWelcome(String name) => 'Harika, $name!';
  @override String get yourSuggestedLanguageIs => 'Sana en uygun başlangıç dili:';
  @override String startWithSuggestedLanguage(String language) => 'Evet, ${language} ile başla';
  @override String get chooseAnotherLanguage => 'Farklı bir dil seçmek istiyorum';
  @override String get pleaseEnterYourName => 'Lütfen adını gir.';
  @override String get pleaseSelectYourKnowledge => 'Lütfen bilgi seviyeni seç.';
  @override String get pleaseSelectYourGoal => 'Lütfen hedefini seç.';
  @override String get buddy => 'Dostum';
  @override String get whatsYourName => 'Merhaba! \nAdın nedir?';
  @override String get typeNameHere => 'Adını buraya yaz';
  @override String get howDoYouRateYourKnowledge => 'Yazılım bilgini nasıl değerlendirirsin?';
  @override String get knowledgeLevelNone => 'Hiç bilmiyorum';
  @override String get knowledgeLevelBasic => 'Az çok biliyorum';
  @override String get knowledgeLevelIntermediate => 'Kendimi geliştirmek istiyorum';
  @override String get whatIsYourGoal => 'Kodlama ile ne yapmak istiyorsun?';
  @override String get goalWeb => 'Web sitesi yapmak';
  @override String get goalMobile => 'Mobil uygulama geliştirmek';
  @override String get goalGame => 'Oyun yapmak';
  @override String get goalJustLearning => 'Sadece öğrenmek için';
  @override String get finishButton => 'Bitir';
  @override String get followingStatus => 'Takiptesin';
  @override String get followButton => 'Takip Et';
  @override String likeCount(int count) => '$count beğeni';
  @override String commentCount(int count) => '$count Yorum';
  @override String get addCommentButton => 'Yorum Yap';
  @override String yearsAgo(int count) => '${count}y önce';
  @override String monthsAgo(int count) => '${count}ay önce';
  @override String weeksAgo(int count) => '${count}h önce';
  @override String daysAgo(int count) => '${count}g önce';
  @override String hoursAgo(int count) => '${count}s önce';
  @override String minutesAgo(int count) => '${count}d önce';
  @override String get justNow => 'az önce';
  @override String get pricingLoadError => 'Fiyat bilgisi yüklenemedi. Lütfen tekrar deneyin.';
  @override String get somethingWentWrong => 'Bir şeyler ters gitti.';
  @override String get premiumBenefit1 => 'Sınırsız ders erişimi ile kısıtlamaları kaldır, tüm içeriğe anında ulaş.';
  @override String get premiumBenefit2 => 'AI Asistan ve AI Derleyici için çok daha yüksek kullanım limitlerinin keyfini çıkar.';
  @override String get premiumBenefit3 => 'Tamamladığın her ders için özel başarı sertifikaları kazan ve profilinde sergile.';
  @override String get monthly => 'AYLIK';
  @override String get yearly => 'YILLIK';
  @override String get startNow => 'Hemen Başla';
  @override String get saveAndStart => 'Kaydet & Başla';
  @override String get paymentDisclaimer => 'Ödemeler uygulama mağazası hesabınızdan tahsil edilecektir. Abonelikler, mevcut dönemin bitiminden en az 24 saat önce iptal edilmediği sürece otomatik olarak yenilenir.';

  // WELCOME SCREEN YENİ EKLENEN METİNLER
  @override String get welcomeSubtitle => 'Kod dünyasına ilk adımını atmaya hazır mısın?';
  @override String get continueWithGoogle => 'Google ile Devam Et';
  @override String get continueAsGuest => 'Giriş Yapmadan Devam Et';


  @override String get privacyPolicyTitle => 'Gizlilik Politikası';
  @override String get privacyPolicyContent => '''
Bu Gizlilik Politikası, "Codein" ("Hizmet") mobil uygulamamızı kullandığınızda bilgilerinizin ENEM SOFTWARE ("biz" veya "bize") tarafından nasıl toplandığını, kullanıldığını ve paylaşıldığını açıklamaktadır.

1. Topladığımız Bilgiler

a. Doğrudan Sağladığınız Bilgiler:
   - Hesap Bilgileri: Bir hesap oluşturduğunuzda, bir kullanıcı adı sağlarsınız ve isteğe bağlı olarak bir Google hesabı bağlarsınız. Kullanıcı Kimliğinizi, Kullanıcı Adınızı ve benzersiz bir Kullanıcı Etiketinizi toplarız.
   - Profil Bilgileri: Deneyim Puanlarınız (XP), Seviyeniz, Takipçi Sayınız ve Takip Ettiğiniz Kişi Sayısı profilinizin bir parçası olarak saklanır.
   - İlk Anket Yanıtları: İlk kurulum sırasında bilgi seviyeniz ve öğrenme hedeflerinizle ilgili sorulara verdiğiniz yanıtlar toplanır.
   - Topluluk İçeriği: Oluşturduğunuz tüm gönderiler (içerik, kod parçacıkları, dil seçimi), yaptığınız yorumlar ve etkileşimler (beğeniler, takipler).
   - Yapay Zeka Etkileşimleri: Yapay Zeka Asistanına gönderdiğiniz sohbet mesajları ve Yapay Zeka Derleyicisine gönderdiğiniz kod parçacıkları.

b. Otomatik Olarak Toplanan Bilgiler:
   - Kullanım Verileri: Tamamlanan dersler, sınav sonuçları, erişilen kurslar, kullanım süresi ve yapay zeka özellik kullanımı (kullanım sayısı, son sıfırlama zaman damgası) gibi Hizmetle olan etkileşimleriniz hakkında bilgi toplarız.
   - Cihaz Bilgileri: Güvenlik ve hizmet optimizasyonu amacıyla cihaza özgü bilgileri (mobil cihaz kimliğiniz, işletim sisteminiz ve IP adresiniz gibi) toplayabiliriz.
   - Aktivite Günlükleri: Seri takibi için günlük aktivite tarihleriniz.
   - Son Kullanılan Kod: Yapay Zeka Derleyicisinde yazdığınız son kod parçacığı, kolaylık olması için cihazınızda yerel olarak kaydedilir.

2. Bilgilerinizi Nasıl Kullanıyoruz

Toplanan bilgileri aşağıdakiler de dahil olmak üzere çeşitli amaçlar için kullanırız:
   - Temel öğrenme özellikleri ve topluluk etkileşimleri de dahil olmak üzere Hizmetimizi sağlamak, sürdürmek ve iyileştirmek.
   - Öğrenme deneyiminizi kişiselleştirmek ve ilgili içeriği önermek.
   - Kullanıcı hesabınızı yönetmek, ilerlemenizi izlemek (XP, seviye, tamamlanan dersler, seriler).
   - Gönderi oluşturma, yorum yapma, beğenme ve takip etme gibi topluluk özelliklerini etkinleştirmek ve geliştirmek.
   - Yapay zeka yardımı (sohbet ve kod analizi) sağlamak ve ücretsiz kullanıcılar için kullanım limitlerini yönetmek.
   - Hizmetin güvenliğini ve bütünlüğünü sağlamak ve hileli faaliyetleri önlemek.
   - Yasal yükümlülüklere uymak.

3. Bilgilerinizi Nasıl Paylaşıyoruz

Bilgilerinizi şunlarla paylaşabiliriz:
   - Supabase: Tüm hesap verilerinizi, profil bilgilerinizi, topluluk içeriğinizi ve yapay zeka kullanım günlüklerinizi saklayan arka uç hizmet sağlayıcımız.
   - Google Gemini API: Sohbet mesajlarınız ve kod parçacıklarınız, işlenmek ve yanıt oluşturulmak üzere Google'ın yapay zeka hizmetine gönderilir.
   - Diğer Kullanıcılar: Kullanıcı adınız, kullanıcı etiketiniz, XP'niz, seviyeniz, takipçileriniz/takip ettikleriniz ve herkese açık topluluk gönderileriniz/yorumlarınız uygulama içindeki diğer kullanıcılar tarafından görülebilir.
   - Yasal Gereklilikler: Bilgilerinizi yasaların gerektirdiği durumlarda veya kamu makamlarının geçerli taleplerine yanıt olarak ifşa edebiliriz.
   - İşletme Devirleri: Bir birleşme, devralma veya varlık satışı durumunda bilgileriniz devredilebilir.

Kişisel verilerinizi üçüncü taraflara satmıyoruz.

4. Veri Güvenliği

Bilgilerinizi yetkisiz erişim, değiştirme, ifşa veya imhaya karşı korumak için tasarlanmış makul güvenlik önlemleri (örneğin, Supabase aracılığıyla veri şifreleme ve erişim kontrolleri) uyguluyoruz.

5. Veri Saklama

Hizmeti sağlamak, yasal yükümlülüklerimize uymak, anlaşmazlıkları çözmek ve anlaşmalarımızı uygulamak için gerekli olduğu sürece kişisel bilgilerinizi saklarız. Hesabınızın silinmesini talep etme hakkına sahipsiniz.

6. Haklarınız

Kişisel bilgilerinizle ilgili olarak aşağıdakiler de dahil olmak üzere belirli haklara sahipsiniz:
   - Erişim: Hakkınızda tuttuğumuz kişisel verilerin bir kopyasını talep edin.
   - Düzeltme: Yanlış veya eksik kişisel verilerin düzeltilmesini talep edin.
   - Silme: Hesabınızın ve ilişkili kişisel verilerin silinmesini talep edin (bu, Profil Ekranı ayarlarından başlatılabilir).
   - İtiraz: Kişisel verilerinizin işlenmesine itiraz edin.

Bu haklardan herhangi birini kullanmak için lütfen bizimle enemsoft@gmail.com adresinden iletişime geçin.

7. Üçüncü Taraf Hizmetleri

Hizmetimiz Supabase ve Google Gemini gibi üçüncü taraf hizmetlerine dayanmaktadır. Bu hizmetlerin veri kullanımı kendi gizlilik politikalarına tabidir. Bu üçüncü taraf hizmetlerin gizlilik uygulamalarından sorumlu değiliz.

8. Bu Gizlilik Politikasındaki Değişiklikler

Gizlilik Politikamızı zaman zaman güncelleyebiliriz. Yeni Gizlilik Politikasını bu sayfada yayınlayarak herhangi bir değişiklik hakkında sizi bilgilendireceğiz. Herhangi bir değişiklik için bu Gizlilik Politikasını periyodik olarak gözden geçirmeniz tavsiye edilir.

9. Bize Ulaşın

Bu Gizlilik Politikası hakkında herhangi bir sorunuz varsa, lütfen bizimle iletişime geçin:
   - E-posta ile: enemsoft@gmail.com

Hizmeti kullanmaya devam ederek, bu Gizlilik Politikasını okuduğunuzu ve anladığınızı kabul etmiş olursunuz.
''';
  @override String get acceptPrivacyPolicy => 'Kabul et';
  @override String get declinePrivacyPolicy => 'Reddet ve Çık';
  @override String get privacyDeclinedMessage => 'Uygulamayı kullanmak için gizlilik politikasını kabul etmelisiniz.';

  @override
  String get loginForThisFeature => 'Bu Özellik İçin Giriş Yapmalısın';
  @override
  String get loginForThisFeatureSubtitle => 'Topluluğa katılmak, AI asistanını kullanmak ve profilini görmek için lütfen hesabınla giriş yap.';


  @override
  String get welcomeTitle => 'Merhaba!';

  @override
  String get loggingIn => 'Giriş yapılıyor...';


  @override String get featuredPythonTitle => 'Python ile Başla';
  @override String get featuredPythonSubtitle => 'Yapay zeka ve veri biliminin en popüler diliyle yolculuğuna başla. Programlamaya ilk adımın burada atılıyor.';
  @override String get featuredAiTitle => 'AI Asistana Danış';
  @override String get featuredAiSubtitle => 'Kodlarken bir hatayla mı karşılaştın veya anlamadığın bir kavram mı var? Yapay zeka destekli asistanın bir tık uzağında.';
  @override String get chatNow => 'Şimdi Sohbet Et';
  @override String get featuredJavaTitle => 'Java\'da Ustalaş';
  @override String get featuredJavaSubtitle => 'Kurumsal düzeydeki sistemlere ve Android uygulamalarına güç veren dilde ustalaş. Java ile bugün güçlü, ölçeklenebilir çözümler oluştur.';

  @override String get categoryWebFrontend => 'Web Geliştirme: Ön Yüz';
  @override String get categoryWebBackend => 'Web Geliştirme: Arka Yüz';
  @override String get categoryMobileAndroid => 'Mobil Geliştirme (Android)';
  @override String get categorySystemPerformance => 'Sistem Programlama ve Yüksek Performans';
  @override String get categoryDataScienceAI => 'Veri Bilimi, Yapay Zeka ve Otomasyon';
  @override String get categoryDatabase => 'Veritabanı Yönetimi';
  @override String get comingSoon => 'Yakında';
}


// Çince (ZH)
class _L10nZh implements L10n {
  @override String get appTitle => '学习编程';
  @override String get coursesTitle => '课程';
  @override String get pythonDescription => '通用、数据科学、人工智能';
  @override String get javascriptDescription => '网络开发（前端/后端）';
  @override String get javaDescription => '安卓、企业应用';
  @override String get cDescription => '系统编程、嵌入式系统';
  @override String get cplusplusDescription => '游戏开发、高性能软件';
  @override String get kotlinDescription => '现代安卓开发';
  @override String get htmlCssDescription => '网页的基本结构和样式';
  @override String get htmlDescription => '网页的基本构建块和骨架';
  @override String get cssDescription => '为网页添加样式和外观的艺术';
  @override String get sqlDescription => '数据库管理和查询语言';
  @override String get requiresHtmlKnowledge => '需要HTML知识';
  @override String get availableSoon => '即将推出';
  @override String get taglineBeginnerFriendly => '初学者友好';
  @override String get taglineLanguageOfTheWeb => 'Web的语言';
  @override String get taglineEnterprisePower => '企业级力量';
  @override String get taglineHighPerformance => '高性能';
  @override String get taglineSystemLanguage => '系统语言';
  @override String get taglineModernAndroid => '现代安卓';
  @override String get continueButton => '继续';
  @override String get challengeArenaTitle => '代码竞技场';
  @override String get dailyChallengeTitle => '每日挑战';
  @override String get dailyChallengeCompletedTitle => '你已完成每日挑战！';
  @override String get dailyChallengeCompletedSubtitle => '干得漂亮！明天再来回答新问题吧。';
  @override String get nextChallengeCountdown => '距离下一次挑战还剩：';
  @override String get miniProjectsTitle => '迷你项目';
  @override String get miniProjectsSubtitle => '运用所学，创造一个具体而切实的成果！';
  @override String get challengeLoadError => '加载挑战问题失败。';
  @override String get unknownQuestionError => '未知问题类型。';
  @override String get pricingInfoLoadError => '价格信息加载失败。请重试。';
  @override String get aiWelcomeMessage => '你好！我在这里帮助你的编程之旅。你有什么想讨论的话题，想练习，还是想让我问你一些问题？';
  @override String get aiGenericError => '抱歉，发生了错误。请重试。';
  @override String get aiMessageTooLong => '你的消息太长了。请最多使用2000个字符。';
  @override String get aiMessageTooShort => '请提出一个更具描述性的问题（至少15个字符）。';
  @override String get aiAssistantTitle => 'AI 助手';
  @override String get getPremium => '获取高级版';
  @override String remainingUses(int count) => '剩余次数：$count';
  @override String nextUse(String time) => '下次可用：$time';
  @override String get typeAMessage => '输入消息...';
  @override String get clickAiAnalysis => '点击“AI 分析”按钮查看结果。';
  @override String get codeTooLong => '// 代码太长！';
  @override String analysisCodeTooLong(int maxChars) => '你提交分析的代码太长。请提交最多$maxChars个字符的代码。';
  @override String get aiCompilerTitle => 'AI 编译器';
  @override String get compilerTab => '编译器';
  @override String get outputTab => '输出';
  @override String get writeYourCodeHere => '在这里写下你的代码...';
  @override String remainingUsesShort(int count) => '（剩余$count次）';
  @override String nextUseShort(String time) => '（$time）';
  @override String get outputTitle => '输出：';
  @override String get noOutputYet => '// 暂无输出。';
  @override String get aiAnalysisTitle => 'AI 分析：';
  @override String get aiAssistantButton => 'AI 助手';
  @override String get aiAnalysisButton => 'AI 分析';
  @override String get commentsTitle => '评论';
  @override String get beTheFirstToComment => '成为第一个评论的人！';
  @override String get writeYourComment => '写下你的评论...';
  @override String get createNewPostTooltip => '创建新帖子';
  @override String get communityTitle => '社区';
  @override String get feedTab => '动态';
  @override String get leaderboardTab => '排行榜';
  @override String errorPrefix(String error) => '错误：$error';
  @override String get noPostsYet => '还没有帖子。\n快来创建第一篇吧！';
  @override String get noDataFound => '未找到数据。';
  // YENİ EKLENEN TOPLULUK METİNLERİ
  @override String get leaderboardTitle => '排行榜';
  @override String yourRank(int rank) => '你的排名：$rank';
  @override String get tapForFullLeaderboard => '点击查看完整排行榜';
  @override String get createNewPostTitle => '创建新帖子';
  @override String get postContentCannotBeEmpty => '帖子内容不能为空。';
  @override String get whatAreYouThinking => '你在想什么？';
  @override String get postContentHint => '在这里写下你的问题或项目描述...';
  @override String get codeSnippetOptional => '代码片段（可选）';
  @override String get pasteYourCodeHere => '在此处粘贴你的代码...';
  @override String get learnLabel => '学习';
  @override String get compilerLabel => '编译器';
  @override String get communityLabel => '社区';
  @override String get profileLabel => '个人资料';
  @override String get congratulations => '恭喜！';
  @override String get lessonCompleteSubtitle => '你已成功完成本课程。你学到了新知识，又向前迈进了一步。';
  @override String get finishAndReturnButton => '完成并返回';
  @override String get lessonStartsWithQuiz => '本课程直接从问题开始。\n准备好后，点击“继续”！';
  @override String get tapToContinue => '点击继续';
  @override String get profileLoadError => '加载个人资料失败。';
  @override String get deletePostTitle => '删除帖子';
  @override String get deletePostConfirmation => '你确定要永久删除这篇帖子吗？';
  @override String get cancel => '取消';
  @override String get delete => '删除';
  @override String get postDeletedSuccess => '帖子已成功删除。';
  @override String postDeleteError(String error) => '删除帖子时出错：$error';
  @override String accountDeleteError(String error) => '删除账户时发生错误：$error';
  @override String get deleteAccountTitle => '确定要删除你的账户吗？';
  @override String get deleteAccountConfirmation => '此操作无法撤销。你所有的进度、经验值和数据都将被永久删除。';
  @override String get deleteAccountButton => '删除账户';
  @override String get settingsTitle => '设置';
  @override String get defaultUsername => '用户';
  @override String levelAndXp(int level, String xp) => '等级 ${level} - ${xp} XP';
  @override String get followers => '关注者';
  @override String get following => '正在关注';
  @override String get myPosts => '我的帖子';
  @override String get postsLoadError => '无法加载帖子。';
  @override String get noPostsYetProfile => '你还没有发过帖子。';
  @override String get freeUser => '免费用户';
  @override String get streak => '连续记录';
  @override String projectFinalCodeTitle(String title) => '$title - 最终代码';
  @override String get projectCompleteTitle => '恭喜，项目完成！';
  @override String get projectCompleteSubtitle => '这是所有步骤合并后的最终代码：';
  @override String get awesomeReturnButton => '太棒了！返回';
  @override String get completeProjectButton => '完成项目并查看最终代码';
  @override String questionProgress(int current, int total) => '问题 $current / $total';
  @override String get wrongAnswerTryAgain => '回答错误，请重试！';
  @override String get skipButton => '跳过';
  @override String get tryAgainButton => '再试一次';
  @override String get submitButton => '提交';
  @override String suggestionWelcome(String name) => '太棒了，$name！';
  @override String get yourSuggestedLanguageIs => '最适合你的入门语言是：';
  @override String startWithSuggestedLanguage(String language) => '是的，从 $language 开始';
  @override String get chooseAnotherLanguage => '我想选择另一种语言';
  @override String get pleaseEnterYourName => '请输入你的名字。';
  @override String get pleaseSelectYourKnowledge => '请选择你的知识水平。';
  @override String get pleaseSelectYourGoal => '请选择你的目标。';
  @override String get buddy => '朋友';
  @override String get whatsYourName => '你好！\n你叫什么名字？';
  @override String get typeNameHere => '在这里输入你的名字';
  @override String get howDoYouRateYourKnowledge => '你如何评价你的编程知识水平？';
  @override String get knowledgeLevelNone => '我什么都不知道';
  @override String get knowledgeLevelBasic => '我了解一点';
  @override String get knowledgeLevelIntermediate => '我想提升自己';
  @override String get whatIsYourGoal => '你想用代码做什么？';
  @override String get goalWeb => '建立一个网站';
  @override String get goalMobile => '开发一个移动应用';
  @override String get goalGame => '制作一个游戏';
  @override String get goalJustLearning => '只是为了学习';
  @override String get finishButton => '完成';
  @override String get followingStatus => '正在关注';
  @override String get followButton => '关注';
  @override String likeCount(int count) => '$count 个赞';
  @override String commentCount(int count) => '$count 条评论';
  @override String get addCommentButton => '添加评论';
  @override String yearsAgo(int count) => '${count}年前';
  @override String monthsAgo(int count) => '${count}月前';
  @override String weeksAgo(int count) => '${count}周前';
  @override String daysAgo(int count) => '${count}天前';
  @override String hoursAgo(int count) => '${count}小时前';
  @override String minutesAgo(int count) => '${count}分钟前';
  @override String get justNow => '刚刚';
  @override String get pricingLoadError => '价格信息加载失败。请重试。';
  @override String get somethingWentWrong => '出错了。';
  @override String get premiumBenefit1 => '无限制访问课程，解除限制，即时访问所有内容。';
  @override String get premiumBenefit2 => '享受AI助手和AI编译器更高的使用限制。';
  @override String get premiumBenefit3 => '为你完成的每一节课赢得特别成就证书，并在你的个人资料中展示。';
  @override String get monthly => '每月';
  @override String get yearly => '每年';
  @override String get startNow => '立即开始';
  @override String get saveAndStart => '保存并开始';
  @override String get paymentDisclaimer => '付款将从您的应用商店账户中扣除。除非在当前周期结束前至少24小时取消，否则订阅将自动续订。';

  // WELCOME SCREEN YENİ EKLENEN METİNLER
  @override String get welcomeSubtitle => '你准备好踏入代码世界的第一步了吗？';
  @override String get continueWithGoogle => '使用 Google 继续';
  @override String get continueAsGuest => '不登录继续';

  @override String get privacyPolicyTitle => '隐私政策';
  @override String get privacyPolicyContent => '''
本隐私政策描述了当您使用我们的“Codein”（“服务”）移动应用程序时，ENEM SOFTWARE（“我们”）如何收集、使用和共享您的信息。

1. 我们收集的信息

a. 您直接提供的信息：
   - 帐户信息：当您创建帐户时，您需要提供一个用户名，并可以选择性地关联一个Google帐户。我们会收集您的用户ID、用户名和一个唯一的用户标签。
   - 个人资料信息：您的经验值（XP）、等级、关注者数量和您关注的人数将作为您个人资料的一部分进行存储。
   - 初始调查回复：在初始设置期间，您对有关您的知识水平和学习目标的问题的回答将被收集。
   - 社区内容：您创建的任何帖子（内容、代码片段、语言选择）、您发表的评论以及互动（点赞、关注）。
   - AI互动：您发送给AI助手的聊天消息以及您提交给AI编译器的代码片段。

b. 自动收集的信息：
   - 使用数据：我们收集有关您与服务互动的信息，例如完成的课程、测验结果、访问的课程、使用时长以及AI功能使用情况（使用次数、上次重置时间戳）。
   - 设备信息：出于安全和服务优化目的，我们可能会收集设备特定信息（例如您的移动设备ID、操作系统和IP地址）。
   - 活动日志：用于连续记录跟踪的每日活动日期。
   - 最近使用的代码：您在AI编译器中编写的最后一个代码片段会出于方便而本地保存在您的设备上。

2. 我们如何使用您的信息

我们将收集的信息用于各种目的，包括：
   - 提供、维护和改进我们的服务，包括核心学习功能和社区互动。
   - 个性化您的学习体验并推荐相关内容。
   - 管理您的用户帐户，跟踪您的进度（XP、等级、完成的课程、连续记录）。
   - 启用和增强社区功能，如发帖、评论、点赞和关注。
   - 提供AI辅助（聊天和代码分析）并管理免费用户的使用限制。
   - 确保服务的安全性和完整性，并防止欺诈活动。
   - 遵守法律义务。

3. 我们如何共享您的信息

我们可能会与以下各方共享您的信息：
   - Supabase：我们的后端服务提供商，存储您所有的帐户数据、个人资料信息、社区内容和AI使用日志。
   - Google Gemini API：您的聊天消息和代码片段会发送到Google的AI服务进行处理并生成响应。
   - 其他用户：您的用户名、用户标签、XP、等级、关注者/关注对象以及您的公开社区帖子/评论对应用内的其他用户可见。
   - 法律要求：在法律要求或响应公共当局的有效请求时，我们可能会披露您的信息。
   - 业务转让：在发生合并、收购或资产出售的情况下，您的信息可能会被转让。

我们不会将您的个人数据出售给第三方。

4. 数据安全

我们采取合理的安全措施（例如，通过Supabase进行数据加密和访问控制），旨在保护您的信息免遭未经授权的访问、更改、披露或销毁。

5. 数据保留

我们将在提供服务、遵守我们的法律义务、解决争议和执行我们的协议所必需的期间内保留您的个人信息。您有权请求删除您的帐户。

6. 您的权利

您对您的个人信息拥有某些权利，包括：
   - 访问：请求我们持有的关于您的个人数据的副本。
   - 更正：请求更正不准确或不完整的个人数据。
   - 删除：请求删除您的帐户及相关的个人数据（可以从个人资料屏幕设置中发起）。
   - 反对：反对我们处理您的个人数据。

要行使任何这些权利，请通过enemsoft@gmail.com与我们联系。

7. 第三方服务

我们的服务依赖于Supabase和Google Gemini等第三方服务。这些服务对数据的使用受其各自的隐私政策管辖。我们不对这些第三方服务的隐私惯例负责。

8. 本隐私政策的变更

我们可能会不时更新我们的隐私政策。我们会通过在此页面上发布新的隐私政策来通知您任何变更。建议您定期查看本隐私政策以了解任何变更。

9. 联系我们

如果您对本隐私政策有任何疑问，请联系我们：
   - 通过电子邮件：enemsoft@gmail.com

继续使用本服务，即表示您已阅读并理解本隐私政策。
''';
  @override String get acceptPrivacyPolicy => '接受并继续';
  @override String get declinePrivacyPolicy => '拒绝并退出';
  @override String get privacyDeclinedMessage => '您必须接受隐私政策才能使用应用程序。';

  @override
  String get loginForThisFeature => '您必须登录才能使用此功能';
  @override
  String get loginForThisFeatureSubtitle => '请使用您的帐户登录以加入社区、使用人工智能助手并查看您的个人资料。';

  @override
  String get welcomeTitle => '你好!';

  @override
  String get loggingIn => '正在登录...';

  @override String get featuredPythonTitle => '从 Python 开始';
  @override String get featuredPythonSubtitle => '使用人工智能和数据科学领域最流行的语言开始您的旅程。您编程的第一步从这里开始。';
  @override String get featuredAiTitle => '咨询 AI 助手';
  @override String get featuredAiSubtitle => '您在编码时遇到错误还是有不理解的概念？您的人工智能助手只需点击一下即可。';
  @override String get chatNow => '立即聊天';
  @override String get featuredJavaTitle => '精通 Java';
  @override String get featuredJavaSubtitle => '掌握为企业级系统和 Android 应用程序提供支持的语言。立即使用 Java 构建功能强大、可扩展的解决方案。';

  @override String get categoryWebFrontend => 'Web 开发：前端';
  @override String get categoryWebBackend => 'Web 开发：后端';
  @override String get categoryMobileAndroid => '移动开发 (Android)';
  @override String get categorySystemPerformance => '系统编程和高性能';
  @override String get categoryDataScienceAI => '数据科学、人工智能和自动化';
  @override String get categoryDatabase => '数据库管理';
  @override String get comingSoon => '即将推出';
}

// Almanca (DE)
class _L10nDe implements L10n {
  @override String get appTitle => 'Programmieren lernen';
  @override String get coursesTitle => 'Kurse';
  @override String get pythonDescription => 'Allzweck, Datenwissenschaft, künstliche Intelligenz';
  @override String get javascriptDescription => 'Webentwicklung (Frontend/Backend)';
  @override String get javaDescription => 'Android, Unternehmensanwendungen';
  @override String get cDescription => 'Systemprogrammierung, eingebettete Systeme';
  @override String get cplusplusDescription => 'Spieleentwicklung, Hochleistungssoftware';
  @override String get kotlinDescription => 'Moderne Android-Entwicklung';
  @override String get htmlCssDescription => 'Grundstruktur und Stil von Webseiten';
  @override String get htmlDescription => 'Der grundlegende Baustein und das Skelett von Webseiten';
  @override String get cssDescription => 'Die Kunst, Webseiten Stil und Aussehen zu verleihen';
  @override String get sqlDescription => 'Datenbankverwaltung und Abfragesprache';
  @override String get requiresHtmlKnowledge => 'Erfordert HTML-Kenntnisse';
  @override String get availableSoon => 'Bald verfügbar';
  @override String get taglineBeginnerFriendly => 'Anfängerfreundlich';
  @override String get taglineLanguageOfTheWeb => 'Sprache des Webs';
  @override String get taglineEnterprisePower => 'Unternehmensstärke';
  @override String get taglineHighPerformance => 'Hohe Leistung';
  @override String get taglineSystemLanguage => 'Systemsprache';
  @override String get taglineModernAndroid => 'Modernes Android';
  @override String get continueButton => 'Weiter';
  @override String get challengeArenaTitle => 'Code-Arena';
  @override String get dailyChallengeTitle => 'Tägliche Herausforderung';
  @override String get dailyChallengeCompletedTitle => 'Du hast die tägliche Herausforderung abgeschlossen!';
  @override String get dailyChallengeCompletedSubtitle => 'Großartige Arbeit! Komm morgen für eine neue Frage zurück.';
  @override String get nextChallengeCountdown => 'ZEIT BIS ZUR NÄCHSTEN HERAUSFORDERUNG:';
  @override String get miniProjectsTitle => 'Mini-Projekte';
  @override String get miniProjectsSubtitle => 'Nutze, was du gelernt hast, um ein konkretes und greifbares Ergebnis zu schaffen!';
  @override String get challengeLoadError => 'Laden der Herausforderungsfrage fehlgeschlagen.';
  @override String get unknownQuestionError => 'Unbekannter Fragentyp.';
  @override String get pricingInfoLoadError => 'Preisinformationen konnten nicht geladen werden. Bitte versuchen Sie es erneut.';
  @override String get aiWelcomeMessage => 'Hallo! Ich bin hier, um dir auf deiner Programmierreise zu helfen. Hast du ein Thema im Sinn, möchtest du üben oder soll ich dir einige Fragen stellen?';
  @override String get aiGenericError => 'Entschuldigung, ein Fehler ist aufgetreten. Bitte versuche es erneut.';
  @override String get aiMessageTooLong => 'Deine Nachricht ist zu lang. Bitte verwende maximal 2000 Zeichen.';
  @override String get aiMessageTooShort => 'Bitte stelle eine aussagekräftigere Frage (mindestens 15 Zeichen).';
  @override String get aiAssistantTitle => 'KI-Assistent';
  @override String get getPremium => 'Premium holen';
  @override String remainingUses(int count) => 'Verbleibende Nutzungen: $count';
  @override String nextUse(String time) => 'Nächste Nutzung: $time';
  @override String get typeAMessage => 'Nachricht eingeben...';
  @override String get clickAiAnalysis => 'Klicke auf die Schaltfläche "KI-Analyse", um die Ergebnisse zu sehen.';
  @override String get codeTooLong => '// Code zu lang!';
  @override String analysisCodeTooLong(int maxChars) => 'Der zur Analyse eingereichte Code ist zu lang. Bitte reiche Code mit maximal $maxChars Zeichen ein.';
  @override String get aiCompilerTitle => 'KI-Compiler';
  @override String get compilerTab => 'Compiler';
  @override String get outputTab => 'Ausgabe';
  @override String get writeYourCodeHere => 'Schreibe deinen Code hier...';
  @override String remainingUsesShort(int count) => '($count Nutzungen übrig)';
  @override String nextUseShort(String time) => '($time)';
  @override String get outputTitle => 'Ausgabe:';
  @override String get noOutputYet => '// Noch keine Ausgabe.';
  @override String get aiAnalysisTitle => 'KI-Analyse:';
  @override String get aiAssistantButton => 'KI-Assistent';
  @override String get aiAnalysisButton => 'KI-Analyse';
  @override String get commentsTitle => 'Kommentare';
  @override String get beTheFirstToComment => 'Sei der Erste, der kommentiert!';
  @override String get writeYourComment => 'Schreibe deinen Kommentar...';
  @override String get createNewPostTooltip => 'Neuen Beitrag erstellen';
  @override String get communityTitle => 'Community';
  @override String get feedTab => 'Feed';
  @override String get leaderboardTab => 'Bestenliste';
  @override String errorPrefix(String error) => 'Fehler: $error';
  @override String get noPostsYet => 'Noch keine Beiträge.\nSei der Erste, der einen erstellt!';
  @override String get noDataFound => 'Keine Daten gefunden.';
  // YENİ EKLENEN TOPLULUK METİNLERİ
  @override String get leaderboardTitle => 'Bestenliste';
  @override String yourRank(int rank) => 'Dein Rang: $rank';
  @override String get tapForFullLeaderboard => 'Für vollständige Bestenliste tippen';
  @override String get createNewPostTitle => 'Neuen Beitrag erstellen';
  @override String get postContentCannotBeEmpty => 'Der Beitragsinhalt darf nicht leer sein.';
  @override String get whatAreYouThinking => 'Was denkst du?';
  @override String get postContentHint => 'Schreibe hier deine Frage oder Projektbeschreibung...';
  @override String get codeSnippetOptional => 'Code-Snippet (Optional)';
  @override String get pasteYourCodeHere => 'Füge deinen Code hier ein...';
  @override String get learnLabel => 'Lernen';
  @override String get compilerLabel => 'Compiler';
  @override String get communityLabel => 'Community';
  @override String get profileLabel => 'Profil';
  @override String get congratulations => 'Herzlichen Glückwunsch!';
  @override String get lessonCompleteSubtitle => 'Du hast diese Lektion erfolgreich abgeschlossen. Du hast Neues gelernt und einen weiteren Schritt nach vorne gemacht.';
  @override String get finishAndReturnButton => 'Beenden & Zurückkehren';
  @override String get lessonStartsWithQuiz => 'Diese Lektion beginnt direkt mit Fragen.\nKlicke auf "Weiter", wenn du bereit bist!';
  @override String get tapToContinue => 'Zum Fortfahren tippen';
  @override String get profileLoadError => 'Profil konnte nicht geladen werden.';
  @override String get deletePostTitle => 'Beitrag löschen';
  @override String get deletePostConfirmation => 'Bist du sicher, dass du diesen Beitrag dauerhaft löschen möchtest?';
  @override String get cancel => 'Abbrechen';
  @override String get delete => 'Löschen';
  @override String get postDeletedSuccess => 'Beitrag erfolgreich gelöscht.';
  @override String postDeleteError(String error) => 'Fehler beim Löschen des Beitrags: $error';
  @override String accountDeleteError(String error) => 'Beim Löschen des Kontos ist ein Fehler aufgetreten: $error';
  @override String get deleteAccountTitle => 'Bist du sicher, dass du dein Konto löschen möchtest?';
  @override String get deleteAccountConfirmation => 'Diese Aktion kann nicht rückgängig gemacht werden. Alle deine Fortschritte, XP und Daten werden dauerhaft gelöscht.';
  @override String get deleteAccountButton => 'Konto löschen';
  @override String get settingsTitle => 'Einstellungen';
  @override String get defaultUsername => 'Benutzer';
  @override String levelAndXp(int level, String xp) => 'Lvl $level - $xp XP';
  @override String get followers => 'Follower';
  @override String get following => 'Folge ich';
  @override String get myPosts => 'Meine Beiträge';
  @override String get postsLoadError => 'Beiträge konnten nicht geladen werden.';
  @override String get noPostsYetProfile => 'Du hast noch keine Beiträge.';
  @override String get freeUser => 'Kostenloser Benutzer';
  @override String get streak => 'Serie';
  @override String projectFinalCodeTitle(String title) => '$title - Finaler Code';
  @override String get projectCompleteTitle => 'Herzlichen Glückwunsch, Projekt abgeschlossen!';
  @override String get projectCompleteSubtitle => 'Hier ist der finale Code, wenn alle Schritte kombiniert sind:';
  @override String get awesomeReturnButton => 'Super! Geh zurück';
  @override String get completeProjectButton => 'Projekt abschließen & Finalen Code sehen';
  @override String questionProgress(int current, int total) => 'Frage $current / $total';
  @override String get wrongAnswerTryAgain => 'Falsche Antwort, versuche es erneut!';
  @override String get skipButton => 'Überspringen';
  @override String get tryAgainButton => 'Erneut versuchen';
  @override String get submitButton => 'Senden';
  @override String suggestionWelcome(String name) => 'Super, $name!';
  @override String get yourSuggestedLanguageIs => 'Deine am besten geeignete Ausgangssprache ist:';
  @override String startWithSuggestedLanguage(String language) => 'Ja, mit $language beginnen';
  @override String get chooseAnotherLanguage => 'Ich möchte eine andere Sprache wählen';
  @override String get pleaseEnterYourName => 'Bitte gib deinen Namen ein.';
  @override String get pleaseSelectYourKnowledge => 'Bitte wähle dein Wissenslevel aus.';
  @override String get pleaseSelectYourGoal => 'Bitte wähle dein Ziel aus.';
  @override String get buddy => 'Kumpel';
  @override String get whatsYourName => 'Hallo! \nWie heißt du?';
  @override String get typeNameHere => 'Gib hier deinen Namen ein';
  @override String get howDoYouRateYourKnowledge => 'Wie würdest du deine Programmierkenntnisse bewerten?';
  @override String get knowledgeLevelNone => 'Ich weiß gar nichts';
  @override String get knowledgeLevelBasic => 'Ich weiß ein wenig';
  @override String get knowledgeLevelIntermediate => 'Ich möchte mich verbessern';
  @override String get whatIsYourGoal => 'Was möchtest du mit Code machen?';
  @override String get goalWeb => 'Eine Webseite erstellen';
  @override String get goalMobile => 'Eine mobile App entwickeln';
  @override String get goalGame => 'Ein Spiel machen';
  @override String get goalJustLearning => 'Nur zum Lernen';
  @override String get finishButton => 'Fertigstellen';
  @override String get followingStatus => 'Gefolgt';
  @override String get followButton => 'Folgen';
  @override String likeCount(int count) => '$count „Gefällt mir“-Angaben';
  @override String commentCount(int count) => '$count Kommentare';
  @override String get addCommentButton => 'Kommentar hinzufügen';
  @override String yearsAgo(int count) => 'vor ${count} J';
  @override String monthsAgo(int count) => 'vor ${count} M';
  @override String weeksAgo(int count) => 'vor ${count} W';
  @override String daysAgo(int count) => 'vor ${count} T';
  @override String hoursAgo(int count) => 'vor ${count} Std';
  @override String minutesAgo(int count) => 'vor ${count} Min';
  @override String get justNow => 'gerade eben';
  @override String get pricingLoadError => 'Preisinformationen konnten nicht geladen werden. Bitte versuchen Sie es erneut.';
  @override String get somethingWentWrong => 'Etwas ist schief gelaufen.';
  @override String get premiumBenefit1 => 'Entfernen Sie Beschränkungen mit unbegrenztem Lektionszugriff, erhalten Sie sofortigen Zugriff auf alle Inhalte.';
  @override String get premiumBenefit2 => 'Genießen Sie viel höhere Nutzungslimits für den KI-Assistenten und den KI-Compiler.';
  @override String get premiumBenefit3 => 'Verdienen Sie für jede abgeschlossene Lektion spezielle Leistungszertifikate und zeigen Sie diese in Ihrem Profil an.';
  @override String get monthly => 'MONATLICH';
  @override String get yearly => 'JÄHRLICH';
  @override String get startNow => 'Jetzt starten';
  @override String get saveAndStart => 'Sparen & Starten';
  @override String get paymentDisclaimer => 'Zahlungen werden Ihrem App-Store-Konto belastet. Abonnements verlängern sich automatisch, sofern sie nicht mindestens 24 Stunden vor dem Ende des aktuellen Zeitraums gekündigt werden.';

  // WELCOME SCREEN YENİ EKLENEN METİNLER
  @override String get welcomeSubtitle => 'Bist du bereit, deinen ersten Schritt in die Welt des Codes zu machen?';
  @override String get continueWithGoogle => 'Mit Google fortfahren';
  @override String get continueAsGuest => 'Ohne Anmeldung fortfahren';


  @override String get privacyPolicyTitle => 'Datenschutzerklärung';
  @override String get privacyPolicyContent => '''
Diese Datenschutzrichtlinie beschreibt, wie Ihre Informationen von ENEM SOFTWARE ("wir" oder "uns") gesammelt, verwendet und weitergegeben werden, wenn Sie unsere mobile Anwendung "Codein" ("Dienst") nutzen.

1. Von uns erfasste Informationen

a. Informationen, die Sie direkt bereitstellen:
   - Kontoinformationen: Wenn Sie ein Konto erstellen, geben Sie einen Benutzernamen an und verknüpfen optional ein Google-Konto. Wir erfassen Ihre Benutzer-ID, Ihren Benutzernamen und ein eindeutiges Benutzer-Tag.
   - Profilinformationen: Ihre Erfahrungspunkte (XP), Ihr Level, die Anzahl Ihrer Follower und die Anzahl der Personen, denen Sie folgen, werden als Teil Ihres Profils gespeichert.
   - Antworten auf die erste Umfrage: Ihre Antworten auf Fragen zu Ihrem Wissensstand und Ihren Lernzielen während der Ersteinrichtung werden erfasst.
   - Community-Inhalte: Alle von Ihnen erstellten Beiträge (Inhalt, Code-Snippets, Sprachauswahl), Kommentare und Interaktionen (Likes, Follows).
   - KI-Interaktionen: Chat-Nachrichten, die Sie an den KI-Assistenten senden, und Code-Snippets, die Sie an den KI-Compiler senden.

b. Automatisch erfasste Informationen:
   - Nutzungsdaten: Wir erfassen Informationen über Ihre Interaktionen mit dem Dienst, wie z. B. abgeschlossene Lektionen, Quizergebnisse, aufgerufene Kurse, Nutzungsdauer und die Nutzung von KI-Funktionen (Anzahl der Nutzungen, Zeitstempel des letzten Zurücksetzens).
   - Geräteinformationen: Wir können gerätespezifische Informationen (wie Ihre mobile Geräte-ID, Ihr Betriebssystem und Ihre IP-Adresse) zu Sicherheits- und Dienstoptimierungszwecken erfassen.
   - Aktivitätsprotokolle: Ihre täglichen Aktivitätsdaten zur Verfolgung von Serien.
   - Zuletzt verwendeter Code: Das letzte Code-Snippet, das Sie im KI-Compiler geschrieben haben, wird zur Vereinfachung lokal auf Ihrem Gerät gespeichert.

2. Wie wir Ihre Informationen verwenden

Wir verwenden die gesammelten Informationen für verschiedene Zwecke, einschließlich:
   - Bereitstellung, Wartung und Verbesserung unseres Dienstes, einschließlich grundlegender Lernfunktionen und Community-Interaktionen.
   - Personalisierung Ihrer Lernerfahrung und Empfehlung relevanter Inhalte.
   - Verwaltung Ihres Benutzerkontos, Verfolgung Ihres Fortschritts (XP, Level, abgeschlossene Lektionen, Serien).
   - Aktivierung und Verbesserung von Community-Funktionen wie Post-Erstellung, Kommentieren, Liken und Folgen.
   - Bereitstellung von KI-Unterstützung (Chat und Code-Analyse) und Verwaltung von Nutzungslimits für kostenlose Benutzer.
   - Gewährleistung der Sicherheit und Integrität des Dienstes und Verhinderung betrügerischer Aktivitäten.
   - Einhaltung gesetzlicher Verpflichtungen.

3. Wie wir Ihre Informationen weitergeben

Wir können Ihre Informationen weitergeben an:
   - Supabase: Unser Backend-Dienstanbieter, der alle Ihre Kontodaten, Profilinformationen, Community-Inhalte und KI-Nutzungsprotokolle speichert.
   - Google Gemini API: Ihre Chat-Nachrichten und Code-Snippets werden zur Verarbeitung und Generierung einer Antwort an den KI-Dienst von Google gesendet.
   - Andere Benutzer: Ihr Benutzername, Benutzer-Tag, XP, Level, Follower/Following und Ihre öffentlichen Community-Beiträge/Kommentare sind für andere Benutzer innerhalb der App sichtbar.
   - Gesetzliche Anforderungen: Wir können Ihre Informationen offenlegen, wenn dies gesetzlich vorgeschrieben ist oder als Reaktion auf gültige Anfragen von Behörden.
   - Geschäftsübertragungen: Im Falle einer Fusion, Übernahme oder eines Verkaufs von Vermögenswerten können Ihre Informationen übertragen werden.

Wir verkaufen Ihre personenbezogenen Daten nicht an Dritte.

4. Datensicherheit

Wir implementieren angemessene Sicherheitsmaßnahmen (z. B. Datenverschlüsselung und Zugriffskontrollen über Supabase), um Ihre Informationen vor unbefugtem Zugriff, Änderung, Offenlegung oder Zerstörung zu schützen.

5. Datenspeicherung

Wir speichern Ihre personenbezogenen Daten so lange, wie es zur Bereitstellung des Dienstes, zur Erfüllung unserer gesetzlichen Verpflichtungen, zur Beilegung von Streitigkeiten und zur Durchsetzung unserer Vereinbarungen erforderlich ist. Sie haben das Recht, die Löschung Ihres Kontos zu beantragen.

6. Ihre Rechte

Sie haben bestimmte Rechte in Bezug auf Ihre personenbezogenen Daten, einschließlich:
   - Auskunft: Fordern Sie eine Kopie der personenbezogenen Daten an, die wir über Sie gespeichert haben.
   - Berichtigung: Fordern Sie die Korrektur unrichtiger oder unvollständiger personenbezogener Daten an.
   - Löschung: Fordern Sie die Löschung Ihres Kontos und der damit verbundenen personenbezogenen Daten an (dies kann über die Einstellungen des Profilbildschirms initiiert werden).
   - Widerspruch: Widersprechen Sie der Verarbeitung Ihrer personenbezogenen Daten.

Um eines dieser Rechte auszuüben, kontaktieren Sie uns bitte unter enemsoft@gmail.com.

7. Dienste von Drittanbietern

Unser Dienst stützt sich auf Dienste von Drittanbietern wie Supabase und Google Gemini. Die Datennutzung durch diese Dienste unterliegt deren eigenen Datenschutzrichtlinien. Wir sind nicht verantwortlich für die Datenschutzpraktiken dieser Drittanbieterdienste.

8. Änderungen an dieser Datenschutzrichtlinie

Wir können unsere Datenschutzrichtlinie von Zeit zu Zeit aktualisieren. Wir werden Sie über alle Änderungen informieren, indem wir die neue Datenschutzrichtlinie auf dieser Seite veröffentlichen. Es wird empfohlen, diese Datenschutzrichtlinie regelmäßig auf Änderungen zu überprüfen.

9. Kontaktieren Sie uns

Wenn Sie Fragen zu dieser Datenschutzrichtlinie haben, kontaktieren Sie uns bitte:
   - Per E-Mail: enemsoft@gmail.com

Indem Sie den Dienst weiterhin nutzen, bestätigen Sie, dass Sie diese Datenschutzrichtlinie gelesen und verstanden haben.
''';  @override String get acceptPrivacyPolicy => 'Akzeptieren und fortfahren';
  @override String get declinePrivacyPolicy => 'Ablehnen und beenden';
  @override String get privacyDeclinedMessage => 'Sie müssen die Datenschutzerklärung akzeptieren, um die App nutzen zu können.';

  @override
  String get loginForThisFeature => 'Für diese Funktion müssen Sie sich anmelden';
  @override
  String get loginForThisFeatureSubtitle => 'Bitte melde dich mit deinem Konto an, um der Community beizutreten, den KI-Assistenten zu nutzen und dein Profil zu sehen.';

  @override
  String get welcomeTitle => 'Hallo!';

  @override
  String get loggingIn => 'Einloggen...';

  @override String get featuredPythonTitle => 'Beginnen Sie mit Python';
  @override String get featuredPythonSubtitle => 'Beginnen Sie Ihre Reise mit der beliebtesten Sprache der künstlichen Intelligenz und Datenwissenschaft. Ihr erster Schritt in die Programmierung beginnt hier.';
  @override String get featuredAiTitle => 'KI-Assistenten konsultieren';
  @override String get featuredAiSubtitle => 'Sind Sie beim Programmieren auf einen Fehler gestoßen oder gibt es ein Konzept, das Sie nicht verstehen? Ihr KI-gestützter Assistent ist nur einen Klick entfernt.';
  @override String get chatNow => 'Jetzt chatten';
  @override String get featuredJavaTitle => 'Meistern Sie Java';
  @override String get featuredJavaSubtitle => 'Meistern Sie die Sprache, die Systeme auf Unternehmensebene und Android-Anwendungen antreibt. Erstellen Sie noch heute leistungsstarke, skalierbare Lösungen mit Java.';

  @override String get categoryWebFrontend => 'Webentwicklung: Frontend';
  @override String get categoryWebBackend => 'Webentwicklung: Backend';
  @override String get categoryMobileAndroid => 'Mobile Entwicklung (Android)';
  @override String get categorySystemPerformance => 'Systemprogrammierung und Hochleistung';
  @override String get categoryDataScienceAI => 'Datenwissenschaft, künstliche Intelligenz und Automatisierung';
  @override String get categoryDatabase => 'Datenbankverwaltung';
  @override String get comingSoon => 'Demnächst';

}

// İspanyolca (ES)
class _L10nEs implements L10n {
  @override String get appTitle => 'Aprende a Programar';
  @override String get coursesTitle => 'Cursos';
  @override String get pythonDescription => 'Propósito general, ciencia de datos, inteligencia artificial';
  @override String get javascriptDescription => 'Desarrollo web (frontend/backend)';
  @override String get javaDescription => 'Android, aplicaciones empresariales';
  @override String get cDescription => 'Programación de sistemas, sistemas embebidos';
  @override String get cplusplusDescription => 'Desarrollo de videojuegos, software de alto rendimiento';
  @override String get kotlinDescription => 'Desarrollo moderno de Android';
  @override String get htmlCssDescription => 'Estructura y estilo básicos de las páginas web';
  @override String get htmlDescription => 'El bloque de construcción básico y esqueleto de las páginas web';
  @override String get cssDescription => 'El arte de dar estilo y apariencia a las páginas web';
  @override String get sqlDescription => 'Lenguaje de consulta y gestión de bases de datos';
  @override String get requiresHtmlKnowledge => 'Requiere conocimientos de HTML';
  @override String get availableSoon => 'Disponible Próximamente';
  @override String get taglineBeginnerFriendly => 'Amigable para Principiantes';
  @override String get taglineLanguageOfTheWeb => 'Lenguaje de la Web';
  @override String get taglineEnterprisePower => 'Potencia Empresarial';
  @override String get taglineHighPerformance => 'Alto Rendimiento';
  @override String get taglineSystemLanguage => 'Lenguaje de Sistema';
  @override String get taglineModernAndroid => 'Android Moderno';
  @override String get continueButton => 'Continuar';
  @override String get challengeArenaTitle => 'Arena de Código';
  @override String get dailyChallengeTitle => 'Desafío Diario';
  @override String get dailyChallengeCompletedTitle => '¡Has completado el desafío diario!';
  @override String get dailyChallengeCompletedSubtitle => '¡Buen trabajo! Vuelve mañana para una nueva pregunta.';
  @override String get nextChallengeCountdown => 'TIEMPO HASTA EL PRÓXIMO DESAFÍO:';
  @override String get miniProjectsTitle => 'Mini Proyectos';
  @override String get miniProjectsSubtitle => '¡Usa lo que has aprendido para crear un resultado concreto y tangible!';
  @override String get challengeLoadError => 'Error al cargar la pregunta del desafío.';
  @override String get unknownQuestionError => 'Tipo de pregunta desconocido.';
  @override String get pricingInfoLoadError => 'No se pudo cargar la información de precios. Por favor, inténtelo de nuevo.';
  @override String get aiWelcomeMessage => '¡Hola! Estoy aquí para ayudarte en tu viaje de programación. ¿Tienes algún tema en mente, quieres practicar o te gustaría que te hiciera algunas preguntas?';
  @override String get aiGenericError => 'Lo siento, ocurrió un error. Por favor, inténtalo de nuevo.';
  @override String get aiMessageTooLong => 'Tu mensaje es demasiado largo. Por favor, usa un máximo de 2000 caracteres.';
  @override String get aiMessageTooShort => 'Por favor, haz una pregunta más descriptiva (al menos 15 caracteres).';
  @override String get aiAssistantTitle => 'Asistente de IA';
  @override String get getPremium => 'Obtener Premium';
  @override String remainingUses(int count) => 'Usos restantes: $count';
  @override String nextUse(String time) => 'Próximo uso: $time';
  @override String get typeAMessage => 'Escribe un mensaje...';
  @override String get clickAiAnalysis => 'Haz clic en el botón "Análisis de IA" para ver los resultados.';
  @override String get codeTooLong => '// ¡Código demasiado largo!';
  @override String analysisCodeTooLong(int maxChars) => 'El código que enviaste para análisis es demasiado largo. Por favor, envía código con un máximo de $maxChars caracteres.';
  @override String get aiCompilerTitle => 'Compilador de IA';
  @override String get compilerTab => 'Compilador';
  @override String get outputTab => 'Salida';
  @override String get writeYourCodeHere => 'Escribe tu código aquí...';
  @override String remainingUsesShort(int count) => '($count usos restantes)';
  @override String nextUseShort(String time) => '($time)';
  @override String get outputTitle => 'Salida:';
  @override String get noOutputYet => '// Aún no hay salida.';
  @override String get aiAnalysisTitle => 'Análisis de IA:';
  @override String get aiAssistantButton => 'Asistente de IA';
  @override String get aiAnalysisButton => 'Análisis de IA';
  @override String get commentsTitle => 'Comentarios';
  @override String get beTheFirstToComment => '¡Sé el primero en comentar!';
  @override String get writeYourComment => 'Escribe tu comentario...';
  @override String get createNewPostTooltip => 'Crear Nueva Publicación';
  @override String get communityTitle => 'Comunidad';
  @override String get feedTab => 'Feed';
  @override String get leaderboardTab => 'Clasificación';
  @override String errorPrefix(String error) => 'Error: $error';
  @override String get noPostsYet => 'Aún no hay publicaciones.\n¡Sé el primero en crear una!';
  @override String get noDataFound => 'No se encontraron datos.';
  // YENİ EKLENEN TOPLULUK METİNLERİ
  @override String get leaderboardTitle => 'Clasificación';
  @override String yourRank(int rank) => 'Tu rango: $rank';
  @override String get tapForFullLeaderboard => 'Toca para ver la clasificación completa';
  @override String get createNewPostTitle => 'Crear Nueva Publicación';
  @override String get postContentCannotBeEmpty => 'El contenido de la publicación no puede estar vacío.';
  @override String get whatAreYouThinking => '¿En qué estás pensando?';
  @override String get postContentHint => 'Escribe aquí tu pregunta o la descripción de tu proyecto...';
  @override String get codeSnippetOptional => 'Fragmento de Código (Opcional)';
  @override String get pasteYourCodeHere => 'Pega tu código aquí...';
  @override String get learnLabel => 'Aprender';
  @override String get compilerLabel => 'Compilador';
  @override String get communityLabel => 'Comunidad';
  @override String get profileLabel => 'Perfil';
  @override String get congratulations => '¡Felicidades!';
  @override String get lessonCompleteSubtitle => 'Has completado esta lección con éxito. Has aprendido cosas nuevas y has dado otro paso adelante.';
  @override String get finishAndReturnButton => 'Finalizar y Volver';
  @override String get lessonStartsWithQuiz => 'Esta lección comienza directamente con preguntas.\n¡Haz clic en "Continuar" cuando estés listo!';
  @override String get tapToContinue => 'Toca para continuar';
  @override String get profileLoadError => 'Error al cargar el perfil.';
  @override String get deletePostTitle => 'Eliminar Publicación';
  @override String get deletePostConfirmation => '¿Estás seguro de que quieres eliminar permanentemente esta publicación?';
  @override String get cancel => 'Cancelar';
  @override String get delete => 'Eliminar';
  @override String get postDeletedSuccess => 'Publicación eliminada con éxito.';
  @override String postDeleteError(String error) => 'Error al eliminar la publicación: $error';
  @override String accountDeleteError(String error) => 'Ocurrió un error al eliminar la cuenta: $error';
  @override String get deleteAccountTitle => '¿Estás seguro de que quieres eliminar tu cuenta?';
  @override String get deleteAccountConfirmation => 'Esta acción no se puede deshacer. Todo tu progreso, XP y datos serán eliminados permanentemente.';
  @override String get deleteAccountButton => 'Eliminar Cuenta';
  @override String get settingsTitle => 'Ajustes';
  @override String get defaultUsername => 'Usuario';
  @override String levelAndXp(int level, String xp) => 'Nvl $level - $xp XP';
  @override String get followers => 'Seguidores';
  @override String get following => 'Siguiendo';
  @override String get myPosts => 'Mis Publicaciones';
  @override String get postsLoadError => 'No se pudieron cargar las publicaciones.';
  @override String get noPostsYetProfile => 'Aún no tienes publicaciones.';
  @override String get freeUser => 'Usuario Gratuito';
  @override String get streak => 'Racha';
  @override String projectFinalCodeTitle(String title) => '$title - Código Final';
  @override String get projectCompleteTitle => '¡Felicidades, Proyecto Completado!';
  @override String get projectCompleteSubtitle => 'Aquí está el código final cuando se combinan todos los pasos:';
  @override String get awesomeReturnButton => '¡Genial! Volver';
  @override String get completeProjectButton => 'Completar Proyecto y Ver Código Final';
  @override String questionProgress(int current, int total) => 'Pregunta $current / $total';
  @override String get wrongAnswerTryAgain => 'Respuesta incorrecta, ¡inténtalo de nuevo!';
  @override String get skipButton => 'Saltar';
  @override String get tryAgainButton => 'Intentar de Nuevo';
  @override String get submitButton => 'Enviar';
  @override String suggestionWelcome(String name) => '¡Genial, $name!';
  @override String get yourSuggestedLanguageIs => 'Tu lenguaje de inicio más adecuado es:';
  @override String startWithSuggestedLanguage(String language) => 'Sí, empezar con $language';
  @override String get chooseAnotherLanguage => 'Quiero elegir un lenguaje diferente';
  @override String get pleaseEnterYourName => 'Por favor, introduce tu nombre.';
  @override String get pleaseSelectYourKnowledge => 'Por favor, selecciona tu nivel de conocimiento.';
  @override String get pleaseSelectYourGoal => 'Por favor, selecciona tu objetivo.';
  @override String get buddy => 'Amigo';
  @override String get whatsYourName => '¡Hola! \n¿Cuál es tu nombre?';
  @override String get typeNameHere => 'Escribe tu nombre aquí';
  @override String get howDoYouRateYourKnowledge => '¿Cómo calificarías tus conocimientos de programación?';
  @override String get knowledgeLevelNone => 'No sé nada';
  @override String get knowledgeLevelBasic => 'Sé un poco';
  @override String get knowledgeLevelIntermediate => 'Quiero mejorar';
  @override String get whatIsYourGoal => '¿Qué quieres hacer con el código?';
  @override String get goalWeb => 'Construir un sitio web';
  @override String get goalMobile => 'Desarrollar una aplicación móvil';
  @override String get goalGame => 'Hacer un juego';
  @override String get goalJustLearning => 'Solo por aprender';
  @override String get finishButton => 'Finalizar';
  @override String get followingStatus => 'Siguiendo';
  @override String get followButton => 'Seguir';
  @override String likeCount(int count) => '$count Me gusta';
  @override String commentCount(int count) => '$count Comentarios';
  @override String get addCommentButton => 'Añadir Comentario';
  @override String yearsAgo(int count) => 'hace ${count}a';
  @override String monthsAgo(int count) => 'hace ${count}m';
  @override String weeksAgo(int count) => 'hace ${count}s';
  @override String daysAgo(int count) => 'hace ${count}d';
  @override String hoursAgo(int count) => 'hace ${count}h';
  @override String minutesAgo(int count) => 'hace ${count}m';
  @override String get justNow => 'ahora mismo';
  @override String get pricingLoadError => 'No se pudo cargar la información de precios. Por favor, inténtelo de nuevo.';
  @override String get somethingWentWrong => 'Algo salió mal.';
  @override String get premiumBenefit1 => 'Elimine las restricciones con acceso ilimitado a las lecciones, obtenga acceso instantáneo a todo el contenido.';
  @override String get premiumBenefit2 => 'Disfrute de límites de uso mucho más altos para el Asistente de IA y el Compilador de IA.';
  @override String get premiumBenefit3 => 'Obtenga certificados de logros especiales por cada lección que complete y muéstrelos en su perfil.';
  @override String get monthly => 'MENSUAL';
  @override String get yearly => 'ANUAL';
  @override String get startNow => 'Empezar ahora';
  @override String get saveAndStart => 'Ahorrar y Empezar';
  @override String get paymentDisclaimer => 'Los pagamentos se cargarán a su cuenta de la tienda de aplicaciones. Las suscripciones se renuevan automáticamente a menos que se cancelen al menos 24 horas antes del final del período actual.';

  // WELCOME SCREEN YENİ EKLENEN METİNLER
  @override String get welcomeSubtitle => '¿Estás listo para dar tu primer paso en el mundo del código?';
  @override String get continueWithGoogle => 'Continuar con Google';
  @override String get continueAsGuest => 'Continuar sin iniciar sesión';


  @override String get privacyPolicyTitle => 'Política de Privacidad';
  @override String get privacyPolicyContent => '''
Esta Política de Privacidad describe cómo ENEM SOFTWARE ("nosotros") recopila, utiliza y comparte su información cuando utiliza nuestra aplicación móvil "Codein" ("Servicio").

1. Información que recopilamos

a. Información que proporciona directamente:
   - Información de la cuenta: Al crear una cuenta, proporciona un nombre de usuario y, opcionalmente, vincula una cuenta de Google. Recopilamos su ID de usuario, nombre de usuario y una etiqueta de usuario única.
   - Información del perfil: Sus Puntos de Experiencia (XP), Nivel, Número de Seguidores y Número de Seguidos se almacenan como parte de su perfil.
   - Respuestas a la encuesta inicial: Se recopilan sus respuestas a las preguntas sobre su nivel de conocimiento y sus objetivos de aprendizaje durante la configuración inicial.
   - Contenido de la comunidad: Cualquier publicación que cree (contenido, fragmentos de código, elección de idioma), comentarios que haga e interacciones (me gusta, seguimientos).
   - Interacciones con la IA: Mensajes de chat que envía al Asistente de IA y fragmentos de código que envía al Compilador de IA.

b. Información recopilada automáticamente:
   - Datos de uso: Recopilamos información sobre sus interacciones con el Servicio, como lecciones completadas, resultados de cuestionarios, cursos a los que ha accedido, duración del uso y uso de funciones de IA (recuento de uso, marca de tiempo del último reinicio).
   - Información del dispositivo: Podemos recopilar información específica del dispositivo (como el ID de su dispositivo móvil, sistema operativo y dirección IP) con fines de seguridad y optimización del servicio.
   - Registros de actividad: Las fechas de su actividad diaria para el seguimiento de rachas.
   - Último código utilizado: El último fragmento de código que escribió en el Compilador de IA se guarda localmente en su dispositivo para su comodidad.

2. Cómo utilizamos su información

Utilizamos la información recopilada para diversos fines, entre ellos:
   - Proporcionar, mantener y mejorar nuestro Servicio, incluidas las funciones básicas de aprendizaje y las interacciones con la comunidad.
   - Personalizar su experiencia de aprendizaje y recomendar contenido relevante.
   - Gestionar su cuenta de usuario, seguir su progreso (XP, nivel, lecciones completadas, rachas).
   - Habilitar y mejorar las funciones de la comunidad como la creación de publicaciones, comentarios, "me gusta" y seguimientos.
   - Proporcionar asistencia de IA (chat y análisis de código) y gestionar los límites de uso para los usuarios gratuitos.
   - Garantizar la seguridad e integridad del Servicio y prevenir actividades fraudulentas.
   - Cumplir con las obligaciones legales.

3. Cómo compartimos su información

Podemos compartir su información con:
   - Supabase: Nuestro proveedor de servicios de backend que almacena todos los datos de su cuenta, información de perfil, contenido de la comunidad y registros de uso de la IA.
   - API de Google Gemini: Sus mensajes de chat y fragmentos de código se envían al servicio de IA de Google para su procesamiento y para generar una respuesta.
   - Otros usuarios: Su nombre de usuario, etiqueta de usuario, XP, nivel, seguidores/seguidos y sus publicaciones/comentarios públicos de la comunidad son visibles para otros usuarios dentro de la aplicación.
   - Requisitos legales: Podemos divulgar su información cuando lo exija la ley o en respuesta a solicitudes válidas de las autoridades públicas.
   - Transferencias de negocio: En caso de fusión, adquisición o venta de activos, su información puede ser transferida.

No vendemos sus datos personales a terceros.

4. Seguridad de los datos

Implementamos medidas de seguridad razonables (por ejemplo, cifrado de datos y controles de acceso a través de Supabase) diseñadas para proteger su información contra el acceso, la alteración, la divulgación o la destrucción no autorizados.

5. Retención de datos

Conservamos su información personal durante el tiempo que sea necesario para prestar el Servicio, cumplir con nuestras obligaciones legales, resolver disputas y hacer cumplir nuestros acuerdos. Tiene derecho a solicitar la eliminación de su cuenta.

6. Sus derechos

Tiene ciertos derechos con respecto a su información personal, que incluyen:
   - Acceso: Solicitar una copia de los datos personales que tenemos sobre usted.
   - Rectificación: Solicitar la corrección de datos personales inexactos o incompletos.
   - Supresión: Solicitar la eliminación de su cuenta y los datos personales asociados (esto se puede iniciar desde la configuración de la pantalla de perfil).
   - Oposición: Oponerse a nuestro tratamiento de sus datos personales.

Para ejercer cualquiera de estos derechos, póngase en contacto con nosotros en enemsoft@gmail.com.

7. Servicios de terceros

Nuestro Servicio se basa en servicios de terceros como Supabase y Google Gemini. El uso de los datos por parte de estos servicios se rige por sus propias políticas de privacidad. No somos responsables de las prácticas de privacidad de estos servicios de terceros.

8. Cambios en esta Política de Privacidad

Podemos actualizar nuestra Política de Privacidad de vez en cuando. Le notificaremos cualquier cambio publicando la nueva Política de Privacidad en esta página. Se le aconseja que revise esta Política de Privacidad periódicamente para ver si hay cambios.

9. Contáctenos

Si tiene alguna pregunta sobre esta Política de Privacidad, póngase en contacto con nosotros:
   - Por correo electrónico: enemsoft@gmail.com

Al continuar utilizando el Servicio, usted reconoce que ha leído y entendido esta Política de Privacidad.
''';
  @override String get acceptPrivacyPolicy => 'Aceptar y continuar';
  @override String get declinePrivacyPolicy => 'Rechazar y salir';
  @override String get privacyDeclinedMessage => 'Debe aceptar la política de privacidad para usar la aplicación.';


  @override
  String get loginForThisFeature => 'Debes iniciar sesión para esta función';
  @override
  String get loginForThisFeatureSubtitle => 'Por favor, inicia sesión con tu cuenta para unirte a la comunidad, usar el asistente de IA y ver tu perfil.';

  @override
  String get welcomeTitle => '¡Hola!';

  @override
  String get loggingIn => 'Iniciando sesión...';

  @override String get featuredPythonTitle => 'Comienza con Python';
  @override String get featuredPythonSubtitle => 'Comienza tu viaje con el lenguaje más popular de la inteligencia artificial y la ciencia de datos. Tu primer paso en la programación comienza aquí.';
  @override String get featuredAiTitle => 'Consulta al Asistente de IA';
  @override String get featuredAiSubtitle => '¿Te encontraste con un error mientras programabas o hay un concepto que no entiendes? Tu asistente con tecnología de inteligencia artificial está a solo un clic de distancia.';
  @override String get chatNow => 'Chatea ahora';
  @override String get featuredJavaTitle => 'Domina Java';
  @override String get featuredJavaSubtitle => 'Domina el lenguaje que impulsa los sistemas a nivel empresarial y las aplicaciones de Android. Crea soluciones potentes y escalables con Java hoy mismo.';

  @override String get categoryWebFrontend => 'Desarrollo web: Frontend';
  @override String get categoryWebBackend => 'Desarrollo web: Backend';
  @override String get categoryMobileAndroid => 'Desarrollo móvil (Android)';
  @override String get categorySystemPerformance => 'Programación de sistemas y alto rendimiento';
  @override String get categoryDataScienceAI => 'Ciencia de datos, inteligencia artificial y automatización';
  @override String get categoryDatabase => 'Gestión de bases de datos';
  @override String get comingSoon => 'Próximamente';
}

// Fransızca (FR)
class _L10nFr implements L10n {
  @override String get appTitle => 'Apprendre à Coder';
  @override String get coursesTitle => 'Cours';
  @override String get pythonDescription => 'Usage général, science des données, intelligence artificielle';
  @override String get javascriptDescription => 'Développement web (frontend/backend)';
  @override String get javaDescription => 'Android, applications d\'entreprise';
  @override String get cDescription => 'Programmation système, systèmes embarqués';
  @override String get cplusplusDescription => 'Développement de jeux, logiciels haute performance';
  @override String get kotlinDescription => 'Développement Android moderne';
  @override String get htmlCssDescription => 'Structure et style de base des pages web';
  @override String get htmlDescription => 'Le bloc de construction de base et le squelette des pages web';
  @override String get cssDescription => 'L\'art de donner du style et de l\'apparence aux pages web';
  @override String get sqlDescription => 'Langage de gestion et d\'interrogation de bases de données';
  @override String get requiresHtmlKnowledge => 'Nécessite des connaissances en HTML';
  @override String get availableSoon => 'Bientôt Disponible';
  @override String get taglineBeginnerFriendly => 'Adapté aux Débutants';
  @override String get taglineLanguageOfTheWeb => 'Langage du Web';
  @override String get taglineEnterprisePower => 'Puissance d\'Entreprise';
  @override String get taglineHighPerformance => 'Haute Performance';
  @override String get taglineSystemLanguage => 'Langage Système';
  @override String get taglineModernAndroid => 'Android Moderne';
  @override String get continueButton => 'Continuer';
  @override String get challengeArenaTitle => 'Arène de Code';
  @override String get dailyChallengeTitle => 'Défi Quotidien';
  @override String get dailyChallengeCompletedTitle => 'Vous avez terminé le défi quotidien !';
  @override String get dailyChallengeCompletedSubtitle => 'Excellent travail ! Revenez demain pour une nouvelle question.';
  @override String get nextChallengeCountdown => 'TEMPS AVANT LE PROCHAIN DÉFI :';
  @override String get miniProjectsTitle => 'Mini Projets';
  @override String get miniProjectsSubtitle => 'Utilisez ce que vous avez appris pour créer un résultat concret et tangible !';
  @override String get challengeLoadError => 'Échec du chargement de la question du défi.';
  @override String get unknownQuestionError => 'Type de question inconnu.';
  @override String get pricingInfoLoadError => 'Échec du chargement des informations de tarification. Veuillez réessayer.';
  @override String get aiWelcomeMessage => 'Bonjour ! Je suis là pour vous aider dans votre parcours de codage. Avez-vous un sujet en tête, voulez-vous pratiquer, ou aimeriez-vous que je vous pose quelques questions ?';
  @override String get aiGenericError => 'Désolé, une erreur est survenue. Veuillez réessayer.';
  @override String get aiMessageTooLong => 'Votre message est trop long. Veuillez utiliser un maximum de 2000 caractères.';
  @override String get aiMessageTooShort => 'Veuillez poser une question plus descriptive (au moins 15 caractères).';
  @override String get aiAssistantTitle => 'Assistant IA';
  @override String get getPremium => 'Obtenir Premium';
  @override String remainingUses(int count) => 'Utilisations restantes : $count';
  @override String nextUse(String time) => 'Prochaine utilisation : $time';
  @override String get typeAMessage => 'Écrire un message...';
  @override String get clickAiAnalysis => 'Cliquez sur le bouton "Analyse IA" pour voir les résultats.';
  @override String get codeTooLong => '// Code trop long !';
  @override String analysisCodeTooLong(int maxChars) => 'Le code que vous avez soumis pour analyse est trop long. Veuillez soumettre un code de $maxChars caractères maximum.';
  @override String get aiCompilerTitle => 'Compilateur IA';
  @override String get compilerTab => 'Compilateur';
  @override String get outputTab => 'Sortie';
  @override String get writeYourCodeHere => 'Écrivez votre code ici...';
  @override String remainingUsesShort(int count) => '($count utilisations restantes)';
  @override String nextUseShort(String time) => '($time)';
  @override String get outputTitle => 'Sortie :';
  @override String get noOutputYet => '// Pas encore de sortie.';
  @override String get aiAnalysisTitle => 'Analyse IA :';
  @override String get aiAssistantButton => 'Assistant IA';
  @override String get aiAnalysisButton => 'Analyse IA';
  @override String get commentsTitle => 'Commentaires';
  @override String get beTheFirstToComment => 'Soyez le premier à commenter !';
  @override String get writeYourComment => 'Écrivez votre commentaire...';
  @override String get createNewPostTooltip => 'Créer une Nouvelle Publication';
  @override String get communityTitle => 'Communauté';
  @override String get feedTab => 'Fil d\'actualité';
  @override String get leaderboardTab => 'Classement';
  @override String errorPrefix(String error) => 'Erreur : $error';
  @override String get noPostsYet => 'Aucune publication pour le moment.\nSoyez le premier à en créer une !';
  @override String get noDataFound => 'Aucune donnée trouvée.';
  // YENİ EKLENEN TOPLULUK METİNLERİ
  @override String get leaderboardTitle => 'Classement';
  @override String yourRank(int rank) => 'Votre rang : $rank';
  @override String get tapForFullLeaderboard => 'Appuyez pour le classement complet';
  @override String get createNewPostTitle => 'Créer une Nouvelle Publication';
  @override String get postContentCannotBeEmpty => 'Le contenu de la publication ne peut pas être vide.';
  @override String get whatAreYouThinking => 'À quoi pensez-vous ?';
  @override String get postContentHint => 'Écrivez votre question ou la description de votre projet ici...';
  @override String get codeSnippetOptional => 'Extrait de Code (Optionnel)';
  @override String get pasteYourCodeHere => 'Collez votre code ici...';
  @override String get learnLabel => 'Apprendre';
  @override String get compilerLabel => 'Compilateur';
  @override String get communityLabel => 'Communauté';
  @override String get profileLabel => 'Profil';
  @override String get congratulations => 'Félicitations !';
  @override String get lessonCompleteSubtitle => 'Vous avez terminé cette leçon avec succès. Vous avez appris de nouvelles choses et fait un pas de plus.';
  @override String get finishAndReturnButton => 'Terminer et Retourner';
  @override String get lessonStartsWithQuiz => 'Cette leçon commence directement par des questions.\nCliquez sur "Continuer" lorsque vous êtes prêt !';
  @override String get tapToContinue => 'Appuyez pour continuer';
  @override String get profileLoadError => 'Échec du chargement du profil.';
  @override String get deletePostTitle => 'Supprimer la Publication';
  @override String get deletePostConfirmation => 'Êtes-vous sûr de vouloir supprimer définitivement cette publication ?';
  @override String get cancel => 'Annuler';
  @override String get delete => 'Supprimer';
  @override String get postDeletedSuccess => 'Publication supprimée avec succès.';
  @override String postDeleteError(String error) => 'Erreur lors de la suppression de la publication : $error';
  @override String accountDeleteError(String error) => 'Une erreur est survenue lors de la suppression du compte : $error';
  @override String get deleteAccountTitle => 'Êtes-vous sûr de vouloir supprimer votre compte ?';
  @override String get deleteAccountConfirmation => 'Cette action est irréversible. Tous vos progrès, XP et données seront supprimés définitivement.';
  @override String get deleteAccountButton => 'Supprimer le Compte';
  @override String get settingsTitle => 'Paramètres';
  @override String get defaultUsername => 'Utilisateur';
  @override String levelAndXp(int level, String xp) => 'Niv $level - $xp XP';
  @override String get followers => 'Abonnés';
  @override String get following => 'Abonnements';
  @override String get myPosts => 'Mes Publications';
  @override String get postsLoadError => 'Impossible de charger les publications.';
  @override String get noPostsYetProfile => 'Vous n\'avez encore aucune publication.';
  @override String get freeUser => 'Utilisateur Gratuit';
  @override String get streak => 'Série';
  @override String projectFinalCodeTitle(String title) => '$title - Code Final';
  @override String get projectCompleteTitle => 'Félicitations, Projet Terminé !';
  @override String get projectCompleteSubtitle => 'Voici le code final lorsque toutes les étapes sont combinées :';
  @override String get awesomeReturnButton => 'Génial ! Retour';
  @override String get completeProjectButton => 'Terminer le Projet & Voir le Code Final';
  @override String questionProgress(int current, int total) => 'Question $current / $total';
  @override String get wrongAnswerTryAgain => 'Mauvaise réponse, réessayez !';
  @override String get skipButton => 'Passer';
  @override String get tryAgainButton => 'Réessayer';
  @override String get submitButton => 'Soumettre';
  @override String suggestionWelcome(String name) => 'Génial, $name !';
  @override String get yourSuggestedLanguageIs => 'Le langage de départ qui vous convient le mieux est :';
  @override String startWithSuggestedLanguage(String language) => 'Oui, commencer avec $language';
  @override String get chooseAnotherLanguage => 'Je veux choisir un autre langage';
  @override String get pleaseEnterYourName => 'Veuillez entrer votre nom.';
  @override String get pleaseSelectYourKnowledge => 'Veuillez sélectionner votre niveau de connaissance.';
  @override String get pleaseSelectYourGoal => 'Veuillez sélectionner votre objectif.';
  @override String get buddy => 'Ami';
  @override String get whatsYourName => 'Bonjour ! \nQuel est votre nom ?';
  @override String get typeNameHere => 'Écrivez votre nom ici';
  @override String get howDoYouRateYourKnowledge => 'Comment évaluez-vous vos connaissances en programmation ?';
  @override String get knowledgeLevelNone => 'Je ne sais rien';
  @override String get knowledgeLevelBasic => 'Je sais un peu';
  @override String get knowledgeLevelIntermediate => 'Je veux m\'améliorer';
  @override String get whatIsYourGoal => 'Que voulez-vous faire avec le code ?';
  @override String get goalWeb => 'Créer un site web';
  @override String get goalMobile => 'Développer une application mobile';
  @override String get goalGame => 'Créer un jeu';
  @override String get goalJustLearning => 'Juste pour apprendre';
  @override String get finishButton => 'Terminer';
  @override String get followingStatus => 'Abonné(e)';
  @override String get followButton => 'S\'abonner';
  @override String likeCount(int count) => '$count J\'aime';
  @override String commentCount(int count) => '$count Commentaires';
  @override String get addCommentButton => 'Ajouter un Commentaire';
  @override String yearsAgo(int count) => 'il y a ${count} an(s)';
  @override String monthsAgo(int count) => 'il y a ${count} mois';
  @override String weeksAgo(int count) => 'il y a ${count} sem';
  @override String daysAgo(int count) => 'il y a ${count} j';
  @override String hoursAgo(int count) => 'il y a ${count} h';
  @override String minutesAgo(int count) => 'il y a ${count} min';
  @override String get justNow => 'à l\'instant';
  @override String get pricingLoadError => 'Échec du chargement des informations de tarification. Veuillez réessayer.';
  @override String get somethingWentWrong => 'Quelque chose s\'est mal passé.';
  @override String get premiumBenefit1 => 'Supprimez les restrictions avec un accès illimité aux leçons, obtenez un accès instantané à tout le contenu.';
  @override String get premiumBenefit2 => 'Profitez de limites d\'utilisation beaucoup plus élevées pour l\'Assistant IA et le Compilateur IA.';
  @override String get premiumBenefit3 => 'Gagnez des certificats de réussite spéciaux pour chaque leçon que vous terminez et affichez-les sur votre profil.';
  @override String get monthly => 'MENSUEL';
  @override String get yearly => 'ANNUEL';
  @override String get startNow => 'Commencer maintenant';
  @override String get saveAndStart => 'Économiser & Commencer';
  @override String get paymentDisclaimer => 'Les paiements seront débités de votre compte de magasin d\'applications. Les abonnements se renouvellent automatiquement sauf s\'ils sont annulés au moins 24 heures avant la fin de la période en cours.';

  // WELCOME SCREEN YENİ EKLENEN METİNLER
  @override String get welcomeSubtitle => 'Êtes-vous prêt à faire votre premier pas dans le monde du code ?';
  @override String get continueWithGoogle => 'Continuer avec Google';
  @override String get continueAsGuest => 'Continuer sans se connecter';


  @override String get privacyPolicyTitle => 'Politique de Confidentialité';
  @override String get privacyPolicyContent => '''
Cette politique de confidentialité décrit comment vos informations sont collectées, utilisées et partagées par ENEM SOFTWARE ("nous") lorsque vous utilisez notre application mobile "Codein" ("Service").

1. Informations que nous collectons

a. Informations que vous fournissez directement :
   - Informations sur le compte : Lorsque vous créez un compte, vous fournissez un nom d'utilisateur et associez éventuellement un compte Google. Nous collectons votre identifiant d'utilisateur, votre nom d'utilisateur et une balise d'utilisateur unique.
   - Informations de profil : Vos points d'expérience (XP), votre niveau, votre nombre d'abonnés et le nombre de personnes que vous suivez sont stockés dans votre profil.
   - Réponses au sondage initial : Vos réponses aux questions sur votre niveau de connaissances et vos objectifs d'apprentissage lors de la configuration initiale sont collectées.
   - Contenu de la communauté : Toutes les publications que vous créez (contenu, extraits de code, choix de la langue), les commentaires que vous faites et les interactions (j'aime, suivis).
   - Interactions avec l'IA : Les messages de chat que vous envoyez à l'assistant IA et les extraits de code que vous soumettez au compilateur IA.

b. Informations collectées automatiquement :
   - Données d'utilisation : Nous collectons des informations sur vos interactions avec le Service, telles que les leçons terminées, les résultats des quiz, les cours consultés, la durée d'utilisation et l'utilisation des fonctionnalités de l'IA (nombre d'utilisations, horodatage de la dernière réinitialisation).
   - Informations sur l'appareil : Nous pouvons collecter des informations spécifiques à l'appareil (telles que l'identifiant de votre appareil mobile, votre système d'exploitation et votre adresse IP) à des fins de sécurité et d'optimisation du service.
   - Journaux d'activité : Vos dates d'activité quotidienne pour le suivi des séries.
   - Dernier code utilisé : Le dernier extrait de code que vous avez écrit dans le compilateur IA est enregistré localement sur votre appareil pour plus de commodité.

2. Comment nous utilisons vos informations

Nous utilisons les informations collectées à diverses fins, notamment :
   - Pour fournir, maintenir et améliorer notre Service, y compris les fonctionnalités d'apprentissage de base et les interactions avec la communauté.
   - Pour personnaliser votre expérience d'apprentissage et recommander du contenu pertinent.
   - Pour gérer votre compte utilisateur, suivre vos progrès (XP, niveau, leçons terminées, séries).
   - Pour activer et améliorer les fonctionnalités de la communauté telles que la création de publications, les commentaires, les "j'aime" et les suivis.
   - Pour fournir une assistance par IA (chat et analyse de code) et gérer les limites d'utilisation pour les utilisateurs gratuits.
   - Pour assurer la sécurité et l'intégrité du Service et prévenir les activités frauduleuses.
   - Pour se conformer aux obligations légales.

3. Comment nous partageons vos informations

Nous pouvons partager vos informations avec :
   - Supabase : Notre fournisseur de services backend qui stocke toutes les données de votre compte, les informations de profil, le contenu de la communauté et les journaux d'utilisation de l'IA.
   - API Google Gemini : Vos messages de chat et vos extraits de code sont envoyés au service d'IA de Google pour traitement et pour générer une réponse.
   - Autres utilisateurs : Votre nom d'utilisateur, votre balise d'utilisateur, vos XP, votre niveau, vos abonnés/abonnements et vos publications/commentaires publics de la communauté sont visibles par les autres utilisateurs de l'application.
   - Exigences légales : Nous pouvons divulguer vos informations lorsque la loi l'exige ou en réponse à des demandes valides des autorités publiques.
   - Transferts d'entreprise : En cas de fusion, d'acquisition ou de vente d'actifs, vos informations peuvent être transférées.

Nous ne vendons pas vos données personnelles à des tiers.

4. Sécurité des données

Nous mettons en œuvre des mesures de sécurité raisonnables (par exemple, le cryptage des données et les contrôles d'accès via Supabase) conçues pour protéger vos informations contre l'accès, l'altération, la divulgation ou la destruction non autorisés.

5. Conservation des données

Nous conservons vos informations personnelles aussi longtemps que nécessaire pour fournir le Service, nous conformer à nos obligations légales, résoudre les litiges et faire respecter nos accords. Vous avez le droit de demander la suppression de votre compte.

6. Vos droits

Vous avez certains droits concernant vos informations personnelles, notamment :
   - Accès : Demander une copie des données personnelles que nous détenons à votre sujet.
   - Rectification : Demander la correction de données personnelles inexactes ou incomplètes.
   - Suppression : Demander la suppression de votre compte et des données personnelles associées (cela peut être initié à partir des paramètres de l'écran de profil).
   - Opposition : Vous opposer à notre traitement de vos données personnelles.

Pour exercer l'un de ces droits, veuillez nous contacter à enemsoft@gmail.com.

7. Services de tiers

Notre Service s'appuie sur des services de tiers comme Supabase et Google Gemini. L'utilisation des données par ces services est régie par leurs propres politiques de confidentialité. Nous ne sommes pas responsables des pratiques de confidentialité de ces services tiers.

8. Modifications de cette politique de confidentialité

Nous pouvons mettre à jour notre politique de confidentialité de temps à autre. Nous vous informerons de tout changement en publiant la nouvelle politique de confidentialité sur cette page. Il vous est conseillé de consulter périodiquement cette politique de confidentialité pour tout changement.

9. Contactez-nous

Si vous avez des questions sur cette politique de confidentialité, veuillez nous contacter :
   - Par e-mail : enemsoft@gmail.com

En continuant à utiliser le Service, vous reconnaissez avoir lu et compris cette politique de confidentialité.
''';
  @override String get acceptPrivacyPolicy => 'Accepter et continuer';
  @override String get declinePrivacyPolicy => 'Refuser et quitter';
  @override String get privacyDeclinedMessage => 'Vous devez accepter la politique de confidentialité pour utiliser l\'application.';

  @override
  String get loginForThisFeature => 'Vous devez vous connecter pour cette fonctionnalité';
  @override
  String get loginForThisFeatureSubtitle => 'Veuillez vous connecter avec votre compte pour rejoindre la communauté, utiliser l\'assistant IA et voir votre profil.';

  @override
  String get welcomeTitle => 'Bonjour!';

  @override
  String get loggingIn => 'Connexion en cours...';

  @override String get featuredPythonTitle => 'Commencez avec Python';
  @override String get featuredPythonSubtitle => 'Commencez votre voyage avec le langage le plus populaire de l\'intelligence artificielle et de la science des données. Votre premier pas dans la programmation commence ici.';
  @override String get featuredAiTitle => 'Consulter l\'assistant IA';
  @override String get featuredAiSubtitle => 'Avez-vous rencontré une erreur en codant ou y a-t-il un concept que vous ne comprenez pas ? Votre assistant alimenté par l\'IA n\'est qu\'à un clic.';
  @override String get chatNow => 'Discutez maintenant';
  @override String get featuredJavaTitle => 'Maîtrisez Java';
  @override String get featuredJavaSubtitle => 'Maîtrisez le langage qui alimente les systèmes d\'entreprise et les applications Android. Créez des solutions puissantes et évolutives avec Java dès aujourd\'hui.';

  @override String get categoryWebFrontend => 'Développement Web : Frontend';
  @override String get categoryWebBackend => 'Développement Web : Backend';
  @override String get categoryMobileAndroid => 'Développement mobile (Android)';
  @override String get categorySystemPerformance => 'Programmation système et haute performance';
  @override String get categoryDataScienceAI => 'Science des données, intelligence artificielle et automatisation';
  @override String get categoryDatabase => 'Gestion de base de données';
  @override String get comingSoon => 'Bientôt disponible';
}

// Hintçe (HI)
class _L10nHi implements L10n {
  @override String get appTitle => 'कोड करना सीखें';
  @override String get coursesTitle => 'कोर्स';
  @override String get pythonDescription => 'सामान्य उद्देश्य, डेटा विज्ञान, कृत्रिम बुद्धिमत्ता';
  @override String get javascriptDescription => 'वेब डेवलपमेंट (फ्रंटएंड/बैकएंड)';
  @override String get javaDescription => 'एंड्रॉइड, एंटरप्राइज एप्लिकेशन';
  @override String get cDescription => 'सिस्टम प्रोग्रामिंग, एम्बेडेड सिस्टम';
  @override String get cplusplusDescription => 'गेम डेवलपमेंट, उच्च-प्रदर्शन सॉफ्टवेयर';
  @override String get kotlinDescription => 'आधुनिक एंड्रॉइड डेवलपमेंट';
  @override String get htmlCssDescription => 'वेब पेजों की मूल संरचना और शैली';
  @override String get htmlDescription => 'वेब पेजों का मूल बिल्डिंग ब्लॉक और कंकाल';
  @override String get cssDescription => 'वेब पेजों को शैली और रूप देने की कला';
  @override String get sqlDescription => 'डेटाबेस प्रबंधन और क्वेरी भाषा';
  @override String get requiresHtmlKnowledge => 'HTML ज्ञान की आवश्यकता है';
  @override String get availableSoon => 'जल्द ही उपलब्ध है';
  @override String get taglineBeginnerFriendly => 'शुरुआती के लिए अनुकूल';
  @override String get taglineLanguageOfTheWeb => 'वेब की भाषा';
  @override String get taglineEnterprisePower => 'एंटरप्राइज पावर';
  @override String get taglineHighPerformance => 'उच्च प्रदर्शन';
  @override String get taglineSystemLanguage => 'सिस्टम भाषा';
  @override String get taglineModernAndroid => 'आधुनिक एंड्रॉइड';
  @override String get continueButton => 'जारी रखें';
  @override String get challengeArenaTitle => 'कोड एरिना';
  @override String get dailyChallengeTitle => 'दैनिक चुनौती';
  @override String get dailyChallengeCompletedTitle => 'आपने दैनिक चुनौती पूरी कर ली है!';
  @override String get dailyChallengeCompletedSubtitle => 'बहुत बढ़िया! एक नए सवाल के लिए कल वापस आएं।';
  @override String get nextChallengeCountdown => 'अगली चुनौती तक का समय:';
  @override String get miniProjectsTitle => 'मिनी प्रोजेक्ट्स';
  @override String get miniProjectsSubtitle => 'जो सीखा है उसका उपयोग करके एक ठोस और वास्तविक परिणाम बनाएं!';
  @override String get challengeLoadError => 'चुनौती प्रश्न लोड करने में विफल।';
  @override String get unknownQuestionError => 'अज्ञात प्रश्न प्रकार।';
  @override String get pricingInfoLoadError => 'मूल्य निर्धारण जानकारी लोड करने में विफल। कृपया पुन: प्रयास करें।';
  @override String get aiWelcomeMessage => 'नमस्ते! मैं आपकी कोडिंग यात्रा में आपकी मदद करने के लिए यहाँ हूँ। क्या आपके मन में कोई विषय है, अभ्यास करना चाहते हैं, या आप चाहेंगे कि मैं आपसे कुछ प्रश्न पूछूं?';
  @override String get aiGenericError => 'क्षमा करें, एक त्रुटि हुई। कृपया पुन: प्रयास करें।';
  @override String get aiMessageTooLong => 'आपका संदेश बहुत लंबा है। कृपया अधिकतम 2000 वर्णों का उपयोग करें।';
  @override String get aiMessageTooShort => 'कृपया अधिक वर्णनात्मक प्रश्न पूछें (कम से कम 15 वर्ण)।';
  @override String get aiAssistantTitle => 'AI सहायक';
  @override String get getPremium => 'प्रीमियम प्राप्त करें';
  @override String remainingUses(int count) => 'शेष उपयोग: $count';
  @override String nextUse(String time) => 'अगला उपयोग: $time';
  @override String get typeAMessage => 'एक संदेश टाइप करें...';
  @override String get clickAiAnalysis => 'परिणाम देखने के लिए "AI विश्लेषण" बटन पर क्लिक करें।';
  @override String get codeTooLong => '// कोड बहुत लंबा है!';
  @override String analysisCodeTooLong(int maxChars) => 'विश्लेषण के लिए आपके द्वारा सबमिट किया गया कोड बहुत लंबा है। कृपया अधिकतम $maxChars वर्णों वाला कोड सबमिट करें।';
  @override String get aiCompilerTitle => 'AI कंपाइलर';
  @override String get compilerTab => 'कंपाइलर';
  @override String get outputTab => 'आउटपुट';
  @override String get writeYourCodeHere => 'अपना कोड यहाँ लिखें...';
  @override String remainingUsesShort(int count) => '($count उपयोग शेष)';
  @override String nextUseShort(String time) => '($time)';
  @override String get outputTitle => 'आउटपुट:';
  @override String get noOutputYet => '// अभी तक कोई आउटपुट नहीं।';
  @override String get aiAnalysisTitle => 'AI विश्लेषण:';
  @override String get aiAssistantButton => 'AI सहायक';
  @override String get aiAnalysisButton => 'AI विश्लेषण';
  @override String get commentsTitle => 'टिप्पणियाँ';
  @override String get beTheFirstToComment => 'टिप्पणी करने वाले पहले व्यक्ति बनें!';
  @override String get writeYourComment => 'अपनी टिप्पणी लिखें...';
  @override String get createNewPostTooltip => 'नई पोस्ट बनाएं';
  @override String get communityTitle => 'समुदाय';
  @override String get feedTab => 'फ़ीड';
  @override String get leaderboardTab => 'लीडरबोर्ड';
  @override String errorPrefix(String error) => 'त्रुटि: $error';
  @override String get noPostsYet => 'अभी तक कोई पोस्ट नहीं।\nपहली पोस्ट बनाने वाले आप बनें!';
  @override String get noDataFound => 'कोई डेटा नहीं मिला।';
  // YENİ EKLENEN TOPLULUK METİNLERİ
  @override String get leaderboardTitle => 'लीडरबोर्ड';
  @override String yourRank(int rank) => 'आपकी रैंक: $rank';
  @override String get tapForFullLeaderboard => 'पूर्ण लीडरबोर्ड के लिए टैप करें';
  @override String get createNewPostTitle => 'नई पोस्ट बनाएं';
  @override String get postContentCannotBeEmpty => 'पोस्ट सामग्री खाली नहीं हो सकती।';
  @override String get whatAreYouThinking => 'आप क्या सोच रहे हैं?';
  @override String get postContentHint => 'अपना प्रश्न या प्रोजेक्ट विवरण यहाँ लिखें...';
  @override String get codeSnippetOptional => 'कोड स्निपेट (वैकल्पिक)';
  @override String get pasteYourCodeHere => 'अपना कोड यहाँ पेस्ट करें...';
  @override String get learnLabel => 'सीखें';
  @override String get compilerLabel => 'कंपाइलर';
  @override String get communityLabel => 'समुदाय';
  @override String get profileLabel => 'प्रोफ़ाइल';
  @override String get congratulations => 'बधाई हो!';
  @override String get lessonCompleteSubtitle => 'आपने इस पाठ को सफलतापूर्वक पूरा कर लिया है। आपने नई चीजें सीखी हैं और एक और कदम आगे बढ़ाया है।';
  @override String get finishAndReturnButton => 'समाप्त करें और वापस जाएं';
  @override String get lessonStartsWithQuiz => 'यह पाठ सीधे प्रश्नों से शुरू होता है।\nजब आप तैयार हों तो "जारी रखें" पर क्लिक करें!';
  @override String get tapToContinue => 'जारी रखने के लिए टैप करें';
  @override String get profileLoadError => 'प्रोफ़ाइल लोड करने में विफल।';
  @override String get deletePostTitle => 'पोस्ट हटाएं';
  @override String get deletePostConfirmation => 'क्या आप वाकई इस पोस्ट को स्थायी रूप से हटाना चाहते हैं?';
  @override String get cancel => 'रद्द करें';
  @override String get delete => 'हटाएं';
  @override String get postDeletedSuccess => 'पोस्ट सफलतापूर्वक हटा दी गई।';
  @override String postDeleteError(String error) => 'पोस्ट हटाने में त्रुटि: $error';
  @override String accountDeleteError(String error) => 'खाता हटाते समय एक त्रुटि हुई: $error';
  @override String get deleteAccountTitle => 'क्या आप वाकई अपना खाता हटाना चाहते हैं?';
  @override String get deleteAccountConfirmation => 'यह कार्रवाई पूर्ववत नहीं की जा सकती। आपकी सारी प्रगति, XP और डेटा स्थायी रूप से हटा दिया जाएगा।';
  @override String get deleteAccountButton => 'खाता हटाएं';
  @override String get settingsTitle => 'सेटिंग्स';
  @override String get defaultUsername => 'उपयोगकर्ता';
  @override String levelAndXp(int level, String xp) => 'स्तर $level - $xp XP';
  @override String get followers => 'फॉलोअर्स';
  @override String get following => 'फॉलो कर रहे हैं';
  @override String get myPosts => 'मेरी पोस्ट्स';
  @override String get postsLoadError => 'पोस्ट लोड नहीं हो सकीं।';
  @override String get noPostsYetProfile => 'आपकी अभी तक कोई पोस्ट नहीं है।';
  @override String get freeUser => 'निःशुल्क उपयोगकर्ता';
  @override String get streak => 'सिलसिला';
  @override String projectFinalCodeTitle(String title) => '$title - अंतिम कोड';
  @override String get projectCompleteTitle => 'बधाई हो, प्रोजेक्ट पूरा हुआ!';
  @override String get projectCompleteSubtitle => 'सभी चरणों को मिलाने पर अंतिम कोड यहाँ है:';
  @override String get awesomeReturnButton => 'बहुत बढ़िया! वापस जाएं';
  @override String get completeProjectButton => 'प्रोजेक्ट पूरा करें और अंतिम कोड देखें';
  @override String questionProgress(int current, int total) => 'प्रश्न $current / $total';
  @override String get wrongAnswerTryAgain => 'गलत जवाब, फिर से प्रयास करें!';
  @override String get skipButton => 'छोड़ें';
  @override String get tryAgainButton => 'पुन: प्रयास करें';
  @override String get submitButton => 'सबमिट करें';
  @override String suggestionWelcome(String name) => 'बहुत बढ़िया, $name!';
  @override String get yourSuggestedLanguageIs => 'आपकी सबसे उपयुक्त शुरुआती भाषा है:';
  @override String startWithSuggestedLanguage(String language) => 'हाँ, $language के साथ शुरू करें';
  @override String get chooseAnotherLanguage => 'मैं एक अलग भाषा चुनना चाहता हूँ';
  @override String get pleaseEnterYourName => 'कृपया अपना नाम दर्ज करें।';
  @override String get pleaseSelectYourKnowledge => 'कृपया अपने ज्ञान का स्तर चुनें।';
  @override String get pleaseSelectYourGoal => 'कृपया अपना लक्ष्य चुनें।';
  @override String get buddy => 'दोस्त';
  @override String get whatsYourName => 'नमस्ते! \nआपका नाम क्या है?';
  @override String get typeNameHere => 'अपना नाम यहाँ टाइप करें';
  @override String get howDoYouRateYourKnowledge => 'आप अपने प्रोग्रामिंग ज्ञान को कैसे रेट करेंगे?';
  @override String get knowledgeLevelNone => 'मुझे कुछ नहीं पता';
  @override String get knowledgeLevelBasic => 'मुझे थोड़ा पता है';
  @override String get knowledgeLevelIntermediate => 'मैं खुद को सुधारना चाहता हूँ';
  @override String get whatIsYourGoal => 'आप कोड के साथ क्या करना चाहते हैं?';
  @override String get goalWeb => 'एक वेबसाइट बनाएं';
  @override String get goalMobile => 'एक मोबाइल ऐप विकसित करें';
  @override String get goalGame => 'एक गेम बनाएं';
  @override String get goalJustLearning => 'बस सीखने के लिए';
  @override String get finishButton => 'समाप्त';
  @override String get followingStatus => 'फॉलो कर रहे हैं';
  @override String get followButton => 'फॉलो करें';
  @override String likeCount(int count) => '$count लाइक';
  @override String commentCount(int count) => '$count टिप्पणियाँ';
  @override String get addCommentButton => 'टिप्पणी जोड़ें';
  @override String yearsAgo(int count) => '${count} साल पहले';
  @override String monthsAgo(int count) => '${count} महीने पहले';
  @override String weeksAgo(int count) => '${count} सप्ताह पहले';
  @override String daysAgo(int count) => '${count} दिन पहले';
  @override String hoursAgo(int count) => '${count} घंटे पहले';
  @override String minutesAgo(int count) => '${count} मिनट पहले';
  @override String get justNow => 'अभी-अभी';
  @override String get pricingLoadError => 'मूल्य निर्धारण जानकारी लोड करने में विफल। कृपया पुन: प्रयास करें।';
  @override String get somethingWentWrong => 'कुछ गलत हो गया।';
  @override String get premiumBenefit1 => 'असीमित पाठ पहुंच के साथ प्रतिबंध हटाएं, सभी सामग्री तक त्वरित पहुंच प्राप्त करें।';
  @override String get premiumBenefit2 => 'AI सहायक और AI कंपाइलर के लिए बहुत अधिक उपयोग सीमाओं का आनंद लें।';
  @override String get premiumBenefit3 => 'आपके द्वारा पूरे किए गए प्रत्येक पाठ के लिए विशेष उपलब्धि प्रमाण पत्र अर्जित करें और उन्हें अपनी प्रोफ़ाइल पर प्रदर्शित करें।';
  @override String get monthly => 'मासिक';
  @override String get yearly => 'वार्षिक';
  @override String get startNow => 'अभी शुरू करें';
  @override String get saveAndStart => 'बचाएं और शुरू करें';
  @override String get paymentDisclaimer => 'भुगतान आपके ऐप स्टोर खाते से लिया जाएगा। सदस्यताएँ स्वचालित रूप से नवीनीकृत हो जाती हैं जब तक कि वर्तमान अवधि के अंत से कम से कम 24 घंटे पहले रद्द न कर दी जाए।';

  // WELCOME SCREEN YENİ EKLENEN METİNLER
  @override String get welcomeSubtitle => 'क्या आप कोड की दुनिया में अपना पहला कदम रखने के लिए तैयार हैं?';
  @override String get continueWithGoogle => 'Google के साथ जारी रखें';
  @override String get continueAsGuest => 'लॉग इन किए बिना जारी रखें';

  @override String get privacyPolicyTitle => 'गोपनीयता नीति';
  @override String get privacyPolicyContent => '''
यह गोपनीयता नीति बताती है कि जब आप हमारे "Codein" ("सेवा") मोबाइल एप्लिकेशन का उपयोग करते हैं तो आपकी जानकारी ENEM SOFTWARE ("हम" या "हमें") द्वारा कैसे एकत्र, उपयोग और साझा की जाती है।

1. हम जो जानकारी एकत्र करते हैं

क. सीधे आपके द्वारा प्रदान की गई जानकारी:
   - खाता जानकारी: जब आप एक खाता बनाते हैं, तो आप एक उपयोगकर्ता नाम प्रदान करते हैं और वैकल्पिक रूप से एक Google खाता लिंक करते हैं। हम आपकी उपयोगकर्ता आईडी, उपयोगकर्ता नाम और एक अद्वितीय उपयोगकर्ता टैग एकत्र करते हैं।
   - प्रोफ़ाइल जानकारी: आपके अनुभव अंक (XP), स्तर, अनुयायियों की संख्या और आप जिन लोगों का अनुसरण करते हैं, उनकी संख्या आपकी प्रोफ़ाइल के हिस्से के रूप में संग्रहीत की जाती है।
   - प्रारंभिक सर्वेक्षण प्रतिक्रियाएँ: प्रारंभिक सेटअप के दौरान आपके ज्ञान स्तर और सीखने के लक्ष्यों के बारे में प्रश्नों के आपके उत्तर एकत्र किए जाते हैं।
   - सामुदायिक सामग्री: आपके द्वारा बनाई गई कोई भी पोस्ट (सामग्री, कोड स्निपेट, भाषा विकल्प), आपके द्वारा की गई टिप्पणियाँ और इंटरैक्शन (लाइक, फॉलो)।
   - एआई इंटरैक्शन: आपके द्वारा एआई सहायक को भेजे गए चैट संदेश और एआई कंपाइलर को सबमिट किए गए कोड स्निपेट।

ख. स्वचालित रूप से एकत्र की गई जानकारी:
   - उपयोग डेटा: हम सेवा के साथ आपके इंटरैक्शन के बारे में जानकारी एकत्र करते हैं, जैसे कि पूर्ण किए गए पाठ, प्रश्नोत्तरी के परिणाम, एक्सेस किए गए पाठ्यक्रम, उपयोग की अवधि और एआई सुविधा का उपयोग (उपयोग गणना, अंतिम रीसेट टाइमस्टैम्प)।
   - डिवाइस जानकारी: हम सुरक्षा और सेवा अनुकूलन उद्देश्यों के लिए डिवाइस-विशिष्ट जानकारी (जैसे आपकी मोबाइल डिवाइस आईडी, ऑपरेटिंग सिस्टम और आईपी पता) एकत्र कर सकते हैं।
   - गतिविधि लॉग: स्ट्रीक ट्रैकिंग के लिए आपकी दैनिक गतिविधि की तारीखें।
   - अंतिम प्रयुक्त कोड: एआई कंपाइलर में आपके द्वारा लिखा गया अंतिम कोड स्निपेट सुविधा के लिए आपके डिवाइस पर स्थानीय रूप से सहेजा जाता है।

2. हम आपकी जानकारी का उपयोग कैसे करते हैं

हम एकत्र की गई जानकारी का उपयोग विभिन्न उद्देश्यों के लिए करते हैं, जिनमें शामिल हैं:
   - मुख्य शिक्षण सुविधाओं और सामुदायिक इंटरैक्शन सहित हमारी सेवा प्रदान करने, बनाए रखने और सुधारने के लिए।
   - आपके सीखने के अनुभव को वैयक्तिकृत करने और प्रासंगिक सामग्री की सिफारिश करने के लिए।
   - आपके उपयोगकर्ता खाते का प्रबंधन करने, आपकी प्रगति को ट्रैक करने (XP, स्तर, पूर्ण किए गए पाठ, स्ट्रीक्स) के लिए।
   - पोस्ट निर्माण, टिप्पणी, लाइक और फॉलो करने जैसी सामुदायिक सुविधाओं को सक्षम और बढ़ाने के लिए।
   - एआई सहायता (चैट और कोड विश्लेषण) प्रदान करने और मुफ्त उपयोगकर्ताओं के लिए उपयोग सीमाओं का प्रबंधन करने के लिए।
   - सेवा की सुरक्षा और अखंडता सुनिश्चित करने और धोखाधड़ी वाली गतिविधियों को रोकने के लिए।
   - कानूनी दायित्वों का पालन करने के लिए।

3. हम आपकी जानकारी कैसे साझा करते हैं

हम आपकी जानकारी इनके साथ साझा कर सकते हैं:
   - Supabase: हमारा बैकएंड सेवा प्रदाता जो आपके सभी खाते के डेटा, प्रोफ़ाइल जानकारी, सामुदायिक सामग्री और एआई उपयोग लॉग को संग्रहीत करता है।
   - Google Gemini API: आपके चैट संदेश और कोड स्निपेट प्रसंस्करण और प्रतिक्रिया उत्पन्न करने के लिए Google की एआई सेवा को भेजे जाते हैं।
   - अन्य उपयोगकर्ता: आपका उपयोगकर्ता नाम, उपयोगकर्ता टैग, XP, स्तर, अनुयायी/अनुसरण करने वाले और आपकी सार्वजनिक सामुदायिक पोस्ट/टिप्पणियाँ ऐप के भीतर अन्य उपयोगकर्ताओं को दिखाई देती हैं।
   - कानूनी आवश्यकताएं: हम आपकी जानकारी का खुलासा कर सकते हैं जहां कानून द्वारा आवश्यक हो या सार्वजनिक अधिकारियों के वैध अनुरोधों के जवाब में।
   - व्यापार हस्तांतरण: विलय, अधिग्रहण या संपत्ति की बिक्री की स्थिति में, आपकी जानकारी स्थानांतरित की जा सकती है।

हम आपका व्यक्तिगत डेटा तीसरे पक्ष को नहीं बेचते हैं।

4. डेटा सुरक्षा

हम आपकी जानकारी को अनधिकृत पहुंच, परिवर्तन, प्रकटीकरण या विनाश से बचाने के लिए डिज़ाइन किए गए उचित सुरक्षा उपाय (जैसे, Supabase के माध्यम से डेटा एन्क्रिप्शन और एक्सेस नियंत्रण) लागू करते हैं।

5. डेटा प्रतिधारण

हम आपकी व्यक्तिगत जानकारी को तब तक बनाए रखते हैं जब तक सेवा प्रदान करने, हमारे कानूनी दायित्वों का पालन करने, विवादों को हल करने और हमारे समझौतों को लागू करने के लिए आवश्यक हो। आपको अपने खाते को हटाने का अनुरोध करने का अधिकार है।

6. आपके अधिकार

आपकी व्यक्तिगत जानकारी के संबंध में आपके कुछ अधिकार हैं, जिनमें शामिल हैं:
   - पहुंच: हमारे पास आपके बारे में मौजूद व्यक्तिगत डेटा की एक प्रति का अनुरोध करें।
   - सुधार: गलत या अधूरी व्यक्तिगत डेटा के सुधार का अनुरोध करें।
   - विलोपन: अपने खाते और संबंधित व्यक्तिगत डेटा को हटाने का अनुरोध करें (यह प्रोफ़ाइल स्क्रीन सेटिंग्स से शुरू किया जा सकता है)।
   - आपत्ति: आपके व्यक्तिगत डेटा के हमारे प्रसंस्करण पर आपत्ति।

इनमें से किसी भी अधिकार का प्रयोग करने के लिए, कृपया हमसे enemsoft@gmail.com पर संपर्क करें।

7. तृतीय-पक्ष सेवाएँ

हमारी सेवा Supabase और Google Gemini जैसी तृतीय-पक्ष सेवाओं पर निर्भर करती है। इन सेवाओं द्वारा डेटा का उपयोग उनकी अपनी गोपनीयता नीतियों द्वारा नियंत्रित होता है। हम इन तृतीय-पक्ष सेवाओं की गोपनीयता प्रथाओं के लिए ज़िम्मेदार नहीं हैं।

8. इस गोपनीयता नीति में परिवर्तन

हम समय-समय पर अपनी गोपनीयता नीति को अपडेट कर सकते हैं। हम इस पृष्ठ पर नई गोपनीयता नीति पोस्ट करके आपको किसी भी बदलाव के बारे में सूचित करेंगे। आपको किसी भी बदलाव के लिए समय-समय पर इस गोपनीयता नीति की समीक्षा करने की सलाह दी जाती है।

9. हमसे संपर्क करें

यदि इस गोपनीयता नीति के बारे में आपके कोई प्रश्न हैं, तो कृपया हमसे संपर्क करें:
   - ईमेल द्वारा: enemsoft@gmail.com

सेवा का उपयोग जारी रखकर, आप स्वीकार करते हैं कि आपने इस गोपनीयता नीति को पढ़ और समझ लिया है।
''';  @override String get acceptPrivacyPolicy => 'स्वीकार करें और जारी रखें';
  @override String get declinePrivacyPolicy => 'अस्वीकार करें और बाहर निकलें';
  @override String get privacyDeclinedMessage => 'ऐप का उपयोग करने के लिए आपको गोपनीयता नीति स्वीकार करनी होगी।';

  @override
  String get loginForThisFeature => 'इस सुविधा के लिए आपको लॉग इन करना होगा';
  @override
  String get loginForThisFeatureSubtitle => 'समुदाय में शामिल होने, AI सहायक का उपयोग करने और अपनी प्रोफ़ाइल देखने के लिए कृपया अपने खाते से लॉग इन करें।';

  @override
  String get welcomeTitle => 'नमस्ते!';

  @override
  String get loggingIn => 'लॉग इन किया जा रहा है...';

  @override String get featuredPythonTitle => 'पाइथन से शुरू करें';
  @override String get featuredPythonSubtitle => 'आर्टिफिशियल इंटेलिजेंस और डेटा साइंस की सबसे लोकप्रिय भाषा के साथ अपनी यात्रा शुरू करें। प्रोग्रामिंग में आपका पहला कदम यहीं से शुरू होता है।';
  @override String get featuredAiTitle => 'एआई सहायक से परामर्श करें';
  @override String get featuredAiSubtitle => 'क्या आपको कोडिंग करते समय कोई त्रुटि मिली या कोई ऐसी अवधारणा है जिसे आप नहीं समझते हैं? आपका एआई-संचालित सहायक बस एक क्लिक दूर है।';
  @override String get chatNow => 'अभी चैट करें';
  @override String get featuredJavaTitle => 'जावा में महारत हासिल करें';
  @override String get featuredJavaSubtitle => 'उस भाषा में महारत हासिल करें जो एंटरप्राइज़-स्तरीय सिस्टम और एंड्रॉइड एप्लिकेशन को शक्ति प्रदान करती है। आज ही जावा के साथ शक्तिशाली, स्केलेबल समाधान बनाएं।';

  @override String get categoryWebFrontend => 'वेब डेवलपमेंट: फ्रंटएंड';
  @override String get categoryWebBackend => 'वेब डेवलपमेंट: बैकएंड';
  @override String get categoryMobileAndroid => 'मोबाइल डेवलपमेंट (एंड्रॉइड)';
  @override String get categorySystemPerformance => 'सिस्टम प्रोग्रामिंग और उच्च प्रदर्शन';
  @override String get categoryDataScienceAI => 'डेटा साइंस, आर्टिफिशियल इंटेलिजेंस और ऑटोमेशन';
  @override String get categoryDatabase => 'डेटाबेस प्रबंधन';
  @override String get comingSoon => 'जल्द आ रहा है';
}

// Arapça (AR)
class _L10nAr implements L10n {
  @override String get appTitle => 'تعلم البرمجة';
  @override String get coursesTitle => 'الدورات';
  @override String get pythonDescription => 'أغراض عامة، علم البيانات، الذكاء الاصطناعي';
  @override String get javascriptDescription => 'تطوير الويب (الواجهة الأمامية/الخلفية)';
  @override String get javaDescription => 'أندرويد، تطبيقات الشركات';
  @override String get cDescription => 'برمجة النظم، الأنظمة المدمجة';
  @override String get cplusplusDescription => 'تطوير الألعاب، برامج عالية الأداء';
  @override String get kotlinDescription => 'تطوير أندرويد الحديث';
  @override String get htmlCssDescription => 'الهيكل الأساسي والأسلوب لصفحات الويب';
  @override String get htmlDescription => 'اللبنة الأساسية والهيكل العظمي لصفحات الويب';
  @override String get cssDescription => 'فن إعطاء الأسلوب والمظهر لصفحات الويب';
  @override String get sqlDescription => 'لغة إدارة قواعد البيانات والاستعلام';
  @override String get requiresHtmlKnowledge => 'يتطلب معرفة بـ HTML';
  @override String get availableSoon => 'قريباً';
  @override String get taglineBeginnerFriendly => 'صديق للمبتدئين';
  @override String get taglineLanguageOfTheWeb => 'لغة الويب';
  @override String get taglineEnterprisePower => 'قوة الشركات';
  @override String get taglineHighPerformance => 'أداء عالي';
  @override String get taglineSystemLanguage => 'لغة النظام';
  @override String get taglineModernAndroid => 'أندرويد الحديث';
  @override String get continueButton => 'متابعة';
  @override String get challengeArenaTitle => 'ساحة الكود';
  @override String get dailyChallengeTitle => 'التحدي اليومي';
  @override String get dailyChallengeCompletedTitle => 'لقد أكملت التحدي اليومي!';
  @override String get dailyChallengeCompletedSubtitle => 'عمل رائع! عد غدًا لسؤال جديد.';
  @override String get nextChallengeCountdown => 'الوقت المتبقي للتحدي التالي:';
  @override String get miniProjectsTitle => 'مشاريع مصغرة';
  @override String get miniProjectsSubtitle => 'استخدم ما تعلمته لإنشاء نتيجة ملموسة ومحسوسة!';
  @override String get challengeLoadError => 'فشل تحميل سؤال التحدي.';
  @override String get unknownQuestionError => 'نوع سؤال غير معروف.';
  @override String get pricingInfoLoadError => 'فشل تحميل معلومات التسعير. الرجاء المحاولة مرة أخرى.';
  @override String get aiWelcomeMessage => 'مرحبًا! أنا هنا لمساعدتك في رحلتك في البرمجة. هل لديك موضوع في ذهنك، هل تريد الممارسة، أم تود أن أطرح عليك بعض الأسئلة؟';
  @override String get aiGenericError => 'عذراً، حدث خطأ. الرجاء المحاولة مرة أخرى.';
  @override String get aiMessageTooLong => 'رسالتك طويلة جدًا. يرجى استخدام 2000 حرف كحد أقصى.';
  @override String get aiMessageTooShort => 'يرجى طرح سؤال أكثر وصفًا (15 حرفًا على الأقل).';
  @override String get aiAssistantTitle => 'مساعد الذكاء الاصطناعي';
  @override String get getPremium => 'احصل على بريميوم';
  @override String remainingUses(int count) => 'الاستخدامات المتبقية: $count';
  @override String nextUse(String time) => 'الاستخدام التالي: $time';
  @override String get typeAMessage => 'اكتب رسالة...';
  @override String get clickAiAnalysis => 'انقر على زر "تحليل الذكاء الاصطناعي" لرؤية النتائج.';
  @override String get codeTooLong => '// الكود طويل جدًا!';
  @override String analysisCodeTooLong(int maxChars) => 'الكود الذي قدمته للتحليل طويل جدًا. يرجى تقديم كود بحد أقصى $maxChars حرفًا.';
  @override String get aiCompilerTitle => 'مترجم الذكاء الاصطناعي';
  @override String get compilerTab => 'المترجم';
  @override String get outputTab => 'الناتج';
  @override String get writeYourCodeHere => 'اكتب الكود الخاص بك هنا...';
  @override String remainingUsesShort(int count) => '(متبقي $count استخدامات)';
  @override String nextUseShort(String time) => '($time)';
  @override String get outputTitle => 'الناتج:';
  @override String get noOutputYet => '// لا يوجد ناتج بعد.';
  @override String get aiAnalysisTitle => 'تحليل الذكاء الاصطناعي:';
  @override String get aiAssistantButton => 'مساعد الذكاء الاصطناعي';
  @override String get aiAnalysisButton => 'تحليل الذكاء الاصطناعي';
  @override String get commentsTitle => 'التعليقات';
  @override String get beTheFirstToComment => 'كن أول من يعلق!';
  @override String get writeYourComment => 'اكتب تعليقك...';
  @override String get createNewPostTooltip => 'إنشاء منشور جديد';
  @override String get communityTitle => 'المجتمع';
  @override String get feedTab => 'آخر الأخبار';
  @override String get leaderboardTab => 'لوحة الصدارة';
  @override String errorPrefix(String error) => 'خطأ: $error';
  @override String get noPostsYet => 'لا توجد منشورات حتى الآن.\nكن أول من ينشئ واحدًا!';
  @override String get noDataFound => 'لم يتم العثور على بيانات.';
  // YENİ EKLENEN TOPLULUK METİNLERİ
  @override String get leaderboardTitle => 'لوحة الصدارة';
  @override String yourRank(int rank) => 'رتبتك: $rank';
  @override String get tapForFullLeaderboard => 'انقر لعرض لوحة الصدارة كاملة';
  @override String get createNewPostTitle => 'إنشاء منشور جديد';
  @override String get postContentCannotBeEmpty => 'لا يمكن أن يكون محتوى المنشور فارغًا.';
  @override String get whatAreYouThinking => 'بماذا تفكر؟';
  @override String get postContentHint => 'اكتب سؤالك أو وصف مشروعك هنا...';
  @override String get codeSnippetOptional => 'مقتطف كود (اختياري)';
  @override String get pasteYourCodeHere => 'الصق الكود الخاص بك هنا...';
  @override String get learnLabel => 'تعلم';
  @override String get compilerLabel => 'المترجم';
  @override String get communityLabel => 'المجتمع';
  @override String get profileLabel => 'الملف الشخصي';
  @override String get congratulations => 'تهانينا!';
  @override String get lessonCompleteSubtitle => 'لقد أكملت هذا الدرس بنجاح. لقد تعلمت أشياء جديدة واتخذت خطوة أخرى إلى الأمام.';
  @override String get finishAndReturnButton => 'إنهاء والعودة';
  @override String get lessonStartsWithQuiz => 'يبدأ هذا الدرس مباشرة بالأسئلة.\nانقر على "متابعة" عندما تكون مستعدًا!';
  @override String get tapToContinue => 'انقر للمتابعة';
  @override String get profileLoadError => 'فشل تحميل الملف الشخصي.';
  @override String get deletePostTitle => 'حذف المنشور';
  @override String get deletePostConfirmation => 'هل أنت متأكد أنك تريد حذف هذا المنشور بشكل دائم؟';
  @override String get cancel => 'إلغاء';
  @override String get delete => 'حذف';
  @override String get postDeletedSuccess => 'تم حذف المنشور بنجاح.';
  @override String postDeleteError(String error) => 'خطأ أثناء حذف المنشور: $error';
  @override String accountDeleteError(String error) => 'حدث خطأ أثناء حذف الحساب: $error';
  @override String get deleteAccountTitle => 'هل أنت متأكد من رغبتك في حذف حسابك؟';
  @override String get deleteAccountConfirmation => 'لا يمكن التراجع عن هذا الإجراء. سيتم حذف كل تقدمك ونقاط الخبرة والبيانات بشكل دائم.';
  @override String get deleteAccountButton => 'حذف الحساب';
  @override String get settingsTitle => 'الإعدادات';
  @override String get defaultUsername => 'مستخدم';
  @override String levelAndXp(int level, String xp) => 'مستوى $level - $xp خبرة';
  @override String get followers => 'متابعون';
  @override String get following => 'يتابع';
  @override String get myPosts => 'منشوراتي';
  @override String get postsLoadError => 'لا يمكن تحميل المنشورات.';
  @override String get noPostsYetProfile => 'ليس لديك منشورات بعد.';
  @override String get freeUser => 'مستخدم مجاني';
  @override String get streak => 'سلسلة';
  @override String projectFinalCodeTitle(String title) => '$title - الكود النهائي';
  @override String get projectCompleteTitle => 'تهانينا، اكتمل المشروع!';
  @override String get projectCompleteSubtitle => 'إليك الكود النهائي عند دمج جميع الخطوات:';
  @override String get awesomeReturnButton => 'رائع! ارجع';
  @override String get completeProjectButton => 'إكمال المشروع ورؤية الكود النهائي';
  @override String questionProgress(int current, int total) => 'سؤال $current / $total';
  @override String get wrongAnswerTryAgain => 'إجابة خاطئة، حاول مرة أخرى!';
  @override String get skipButton => 'تخطي';
  @override String get tryAgainButton => 'حاول مرة أخرى';
  @override String get submitButton => 'إرسال';
  @override String suggestionWelcome(String name) => 'رائع، $name!';
  @override String get yourSuggestedLanguageIs => 'لغة البداية الأنسب لك هي:';
  @override String startWithSuggestedLanguage(String language) => 'نعم، ابدأ بـ $language';
  @override String get chooseAnotherLanguage => 'أريد اختيار لغة مختلفة';
  @override String get pleaseEnterYourName => 'الرجاء إدخال اسمك.';
  @override String get pleaseSelectYourKnowledge => 'الرجاء تحديد مستوى معرفتك.';
  @override String get pleaseSelectYourGoal => 'الرجاء تحديد هدفك.';
  @override String get buddy => 'صديقي';
  @override String get whatsYourName => 'مرحبًا! \nما اسمك؟';
  @override String get typeNameHere => 'اكتب اسمك هنا';
  @override String get howDoYouRateYourKnowledge => 'كيف تقيم معرفتك بالبرمجة؟';
  @override String get knowledgeLevelNone => 'لا أعرف شيئًا';
  @override String get knowledgeLevelBasic => 'أعرف القليل';
  @override String get knowledgeLevelIntermediate => 'أريد أن أطور نفسي';
  @override String get whatIsYourGoal => 'ماذا تريد أن تفعل بالكود؟';
  @override String get goalWeb => 'بناء موقع ويب';
  @override String get goalMobile => 'تطوير تطبيق جوال';
  @override String get goalGame => 'صنع لعبة';
  @override String get goalJustLearning => 'فقط للتعلم';
  @override String get finishButton => 'إنهاء';
  @override String get followingStatus => 'تتابعه';
  @override String get followButton => 'متابعة';
  @override String likeCount(int count) => '$count إعجاب';
  @override String commentCount(int count) => '$count تعليقات';
  @override String get addCommentButton => 'إضافة تعليق';
  @override String yearsAgo(int count) => 'قبل ${count} سنة';
  @override String monthsAgo(int count) => 'قبل ${count} شهر';
  @override String weeksAgo(int count) => 'قبل ${count} أسبوع';
  @override String daysAgo(int count) => 'قبل ${count} يوم';
  @override String hoursAgo(int count) => 'قبل ${count} ساعة';
  @override String minutesAgo(int count) => 'قبل ${count} دقيقة';
  @override String get justNow => 'الآن فقط';
  @override String get pricingLoadError => 'فشل تحميل معلومات التسعير. الرجاء المحاولة مرة أخرى.';
  @override String get somethingWentWrong => 'حدث خطأ ما.';
  @override String get premiumBenefit1 => 'أزل القيود مع وصول غير محدود للدروس، واحصل على وصول فوري إلى كل المحتوى.';
  @override String get premiumBenefit2 => 'استمتع بحدود استخدام أعلى بكثير لمساعد الذكاء الاصطناعي ومترجم الذكاء الاصطناعي.';
  @override String get premiumBenefit3 => 'اكسب شهادات إنجاز خاصة لكل درس تكمله واعرضها في ملفك الشخصي.';
  @override String get monthly => 'شهريًا';
  @override String get yearly => 'سنويًا';
  @override String get startNow => 'ابدأ الآن';
  @override String get saveAndStart => 'وفر وابدأ';
  @override String get paymentDisclaimer => 'سيتم خصم المدفوعات من حساب متجر التطبيقات الخاص بك. يتم تجديد الاشتراكات تلقائيًا ما لم يتم إلغاؤها قبل 24 ساعة على الأقل من نهاية الفترة الحالية.';

  // WELCOME SCREEN YENİ EKLENEN METİNLER
  @override String get welcomeSubtitle => 'هل أنت مستعد لاتخاذ خطوتك الأولى في عالم الأكواد؟';
  @override String get continueWithGoogle => 'المتابعة باستخدام جوجل';
  @override String get continueAsGuest => 'المتابعة بدون تسجيل دخول';


  @override String get privacyPolicyTitle => 'سياسة الخصوصية';
  @override String get privacyPolicyContent => '''
توضح سياسة الخصوصية هذه كيف يتم جمع معلوماتك واستخدامها ومشاركتها بواسطة ENEM SOFTWARE ("نحن" أو "لنا") عند استخدامك لتطبيقنا المحمول "Codein" ("الخدمة").

1. المعلومات التي نجمعها

أ. المعلومات التي تقدمها مباشرة:
   - معلومات الحساب: عند إنشاء حساب، تقدم اسم مستخدم وتربط حساب Google اختياريًا. نجمع معرف المستخدم الخاص بك، واسم المستخدم، وعلامة مستخدم فريدة.
   - معلومات الملف الشخصي: يتم تخزين نقاط خبرتك (XP)، ومستواك، وعدد متابعيك، وعدد الأشخاص الذين تتابعهم كجزء من ملفك الشخصي.
   - إجابات الاستطلاع الأولي: يتم جمع إجاباتك على الأسئلة المتعلقة بمستواك المعرفي وأهدافك التعليمية أثناء الإعداد الأولي.
   - محتوى المجتمع: جميع المنشورات التي تنشئها (المحتوى، مقتطفات الشفرة، اختيار اللغة)، والتعليقات التي تدلي بها، والتفاعلات (الإعجابات، المتابعات).
   - تفاعلات الذكاء الاصطناعي: رسائل الدردشة التي ترسلها إلى مساعد الذكاء الاصطناعي ومقتطفات الشفرة التي ترسلها إلى مترجم الذكاء الاصطناعي.

ب. المعلومات التي يتم جمعها تلقائيًا:
   - بيانات الاستخدام: نجمع معلومات حول تفاعلاتك مع الخدمة، مثل الدروس المكتملة، ونتائج الاختبارات، والدورات التي تم الوصول إليها، ومدة الاستخدام، واستخدام ميزات الذكاء الاصطناعي (عدد الاستخدامات، طابع زمني لآخر إعادة تعيين).
   - معلومات الجهاز: قد نجمع معلومات خاصة بالجهاز (مثل معرف جهازك المحمول، ونظام التشغيل، وعنوان IP الخاص بك) لأغراض الأمان وتحسين الخدمة.
   - سجلات النشاط: تواريخ نشاطك اليومي لتتبع السلسلة.
   - آخر شفرة مستخدمة: يتم حفظ آخر مقتطف شفرة كتبته في مترجم الذكاء الاصطناعي محليًا على جهازك للراحة.

2. كيف نستخدم معلوماتك

نستخدم المعلومات المجمعة لأغراض مختلفة، بما في ذلك:
   - توفير خدمتنا وصيانتها وتحسينها، بما في ذلك ميزات التعلم الأساسية وتفاعلات المجتمع.
   - تخصيص تجربتك التعليمية والتوصية بالمحتوى ذي الصلة.
   - إدارة حساب المستخدم الخاص بك، وتتبع تقدمك (XP، المستوى، الدروس المكتملة، السلاسل).
   - تمكين وتعزيز ميزات المجتمع مثل إنشاء المنشورات والتعليق والإعجاب والمتابعة.
   - توفير المساعدة بالذكاء الاصطناعي (الدردشة وتحليل الشفرة) وإدارة حدود الاستخدام للمستخدمين المجانيين.
   - ضمان أمن وسلامة الخدمة ومنع الأنشطة الاحتيالية.
   - الامتثال للالتزامات القانونية.

3. كيف نشارك معلوماتك

قد نشارك معلوماتك مع:
   - Supabase: مزود خدمة الخلفية لدينا الذي يخزن جميع بيانات حسابك، ومعلومات ملفك الشخصي، ومحتوى المجتمع، وسجلات استخدام الذكاء الاصطناعي.
   - Google Gemini API: يتم إرسال رسائل الدردشة ومقتطفات الشفرة الخاصة بك إلى خدمة الذكاء الاصطناعي من Google للمعالجة وإنشاء استجابة.
   - المستخدمون الآخرون: اسم المستخدم الخاص بك، وعلامة المستخدم، و XP، والمستوى، والمتابعون/المتابعون، ومنشورات/تعليقات المجتمع العامة الخاصة بك تكون مرئية للمستخدمين الآخرين داخل التطبيق.
   - المتطلبات القانونية: قد نكشف عن معلوماتك حيثما يقتضي القانون ذلك أو استجابة لطلبات صالحة من السلطات العامة.
   - عمليات نقل الأعمال: في حالة الاندماج أو الاستحواذ أو بيع الأصول، قد يتم نقل معلوماتك.

نحن لا نبيع بياناتك الشخصية لأطراف ثالثة.

4. أمن البيانات

ننفذ تدابير أمنية معقولة (على سبيل المثال، تشفير البيانات وضوابط الوصول عبر Supabase) مصممة لحماية معلوماتك من الوصول غير المصرح به أو التغيير أو الكشف أو التدمير.

5. الاحتفاظ بالبيانات

نحتفظ بمعلوماتك الشخصية طالما كان ذلك ضروريًا لتوفير الخدمة، والامتثال لالتزاماتنا القانونية، وحل النزاعات، وإنفاذ اتفاقياتنا. لديك الحق في طلب حذف حسابك.

6. حقوقك

لديك حقوق معينة فيما يتعلق بمعلوماتك الشخصية، بما في ذلك:
   - الوصول: طلب نسخة من البيانات الشخصية التي نحتفظ بها عنك.
   - التصحيح: طلب تصحيح البيانات الشخصية غير الدقيقة أو غير المكتملة.
   - الحذف: طلب حذف حسابك والبيانات الشخصية المرتبطة به (يمكن بدء ذلك من إعدادات شاشة الملف الشخصي).
   - الاعتراض: الاعتراض على معالجتنا لبياناتك الشخصية.

لممارسة أي من هذه الحقوق، يرجى الاتصال بنا على enemsoft@gmail.com.

7. خدمات الطرف الثالث

تعتمد خدمتنا على خدمات طرف ثالث مثل Supabase و Google Gemini. يخضع استخدام البيانات من قبل هذه الخدمات لسياسات الخصوصية الخاصة بها. نحن لسنا مسؤولين عن ممارسات الخصوصية لهذه الخدمات التابعة لجهات خارجية.

8. التغييرات على سياسة الخصوصية هذه

قد نقوم بتحديث سياسة الخصوصية الخاصة بنا من وقت لآخر. سنقوم بإعلامك بأي تغييرات عن طريق نشر سياسة الخصوصية الجديدة على هذه الصفحة. يُنصح بمراجعة سياسة الخصوصية هذه بشكل دوري لأي تغييرات.

9. اتصل بنا

إذا كان لديك أي أسئلة حول سياسة الخصوصية هذه، يرجى الاتصال بنا:
   - عن طريق البريد الإلكتروني: enemsoft@gmail.com

من خلال الاستمرار في استخدام الخدمة، فإنك تقر بأنك قد قرأت وفهمت سياسة الخصوصية هذه.
''';
  @override String get acceptPrivacyPolicy => 'قبول ومتابعة';
  @override String get declinePrivacyPolicy => 'رفض وخروج';
  @override String get privacyDeclinedMessage => 'يجب عليك قبول سياسة الخصوصية لاستخدام التطبيق.';

  @override
  String get loginForThisFeature => 'يجب عليك تسجيل الدخول لهذه الميزة';
  @override
  String get loginForThisFeatureSubtitle => 'يرجى تسجيل الدخول بحسابك للانضمام إلى المجتمع واستخدام مساعد الذكاء الاصطناعي ورؤية ملفك الشخصي.';

  @override
  String get welcomeTitle => 'مرحباً!';

  @override
  String get loggingIn => 'جارٍ تسجيل الدخول...';

  @override String get featuredPythonTitle => 'ابدأ مع بايثون';
  @override String get featuredPythonSubtitle => 'ابدأ رحلتك مع اللغة الأكثر شعبية في الذكاء الاصطناعي وعلوم البيانات. خطوتك الأولى في البرمجة تبدأ هنا.';
  @override String get featuredAiTitle => 'استشر مساعد الذكاء الاصطناعي';
  @override String get featuredAiSubtitle => 'هل واجهت خطأ أثناء الترميز أم أن هناك مفهوماً لا تفهمه؟ مساعدك المدعوم بالذكاء الاصطناعي على بعد نقرة واحدة.';
  @override String get chatNow => 'تحدث الآن';
  @override String get featuredJavaTitle => 'إتقان جافا';
  @override String get featuredJavaSubtitle => 'أتقن اللغة التي تشغل الأنظمة على مستوى المؤسسات وتطبيقات أندرويد. أنشئ حلولاً قوية وقابلة للتطوير باستخدام جافا اليوم.';
  @override String get categoryWebFrontend => 'تطوير الويب: الواجهة الأمامية';
  @override String get categoryWebBackend => 'تطوير الويب: الواجهة الخلفية';
  @override String get categoryMobileAndroid => 'تطوير تطبيقات الجوال (أندرويد)';
  @override String get categorySystemPerformance => 'برمجة النظم والأداء العالي';
  @override String get categoryDataScienceAI => 'علوم البيانات والذكاء الاصطناعي والأتمتة';
  @override String get categoryDatabase => 'إدارة قواعد البيانات';
  @override String get comingSoon => 'قريباً';

}

// Portekizce (PT)
class _L10nPt implements L10n {
  @override String get appTitle => 'Aprenda a Programar';
  @override String get coursesTitle => 'Cursos';
  @override String get pythonDescription => 'Propósito geral, ciência de dados, inteligência artificial';
  @override String get javascriptDescription => 'Desenvolvimento web (frontend/backend)';
  @override String get javaDescription => 'Android, aplicações empresariais';
  @override String get cDescription => 'Programação de sistemas, sistemas embarcados';
  @override String get cplusplusDescription => 'Desenvolvimento de jogos, software de alto desempenho';
  @override String get kotlinDescription => 'Desenvolvimento Android moderno';
  @override String get htmlCssDescription => 'Estrutura e estilo básicos de páginas web';
  @override String get htmlDescription => 'O bloco de construção básico e o esqueleto de páginas web';
  @override String get cssDescription => 'A arte de dar estilo e aparência a páginas web';
  @override String get sqlDescription => 'Linguagem de consulta e gerenciamento de banco de dados';
  @override String get requiresHtmlKnowledge => 'Requer conhecimento de HTML';
  @override String get availableSoon => 'Disponível em Breve';
  @override String get taglineBeginnerFriendly => 'Amigável para Iniciantes';
  @override String get taglineLanguageOfTheWeb => 'Linguagem da Web';
  @override String get taglineEnterprisePower => 'Poder Empresarial';
  @override String get taglineHighPerformance => 'Alto Desempenho';
  @override String get taglineSystemLanguage => 'Linguagem de Sistema';
  @override String get taglineModernAndroid => 'Android Moderno';
  @override String get continueButton => 'Continuar';
  @override String get challengeArenaTitle => 'Arena de Código';
  @override String get dailyChallengeTitle => 'Desafio Diário';
  @override String get dailyChallengeCompletedTitle => 'Você completou o desafio diário!';
  @override String get dailyChallengeCompletedSubtitle => 'Ótimo trabalho! Volte amanhã para uma nova pergunta.';
  @override String get nextChallengeCountdown => 'TEMPO ATÉ O PRÓXIMO DESAFIO:';
  @override String get miniProjectsTitle => 'Mini Projetos';
  @override String get miniProjectsSubtitle => 'Use o que você aprendeu para criar um resultado concreto e tangível!';
  @override String get challengeLoadError => 'Falha ao carregar a pergunta do desafio.';
  @override String get unknownQuestionError => 'Tipo de pergunta desconhecido.';
  @override String get pricingInfoLoadError => 'Falha ao carregar as informações de preço. Por favor, tente novamente.';
  @override String get aiWelcomeMessage => 'Olá! Estou aqui para te ajudar em sua jornada de programação. Você tem algum tópico em mente, quer praticar, ou gostaria que eu te fizesse algumas perguntas?';
  @override String get aiGenericError => 'Desculpe, ocorreu um erro. Por favor, tente novamente.';
  @override String get aiMessageTooLong => 'Sua mensagem é muito longa. Por favor, use no máximo 2000 caracteres.';
  @override String get aiMessageTooShort => 'Por favor, faça uma pergunta mais descritiva (pelo menos 15 caracteres).';
  @override String get aiAssistantTitle => 'Assistente de IA';
  @override String get getPremium => 'Obter Premium';
  @override String remainingUses(int count) => 'Usos restantes: $count';
  @override String nextUse(String time) => 'Próximo uso: $time';
  @override String get typeAMessage => 'Digite uma mensagem...';
  @override String get clickAiAnalysis => 'Clique no botão "Análise de IA" para ver os resultados.';
  @override String get codeTooLong => '// Código muito longo!';
  @override String analysisCodeTooLong(int maxChars) => 'O código que você enviou para análise é muito longo. Por favor, envie um código com no máximo $maxChars caracteres.';
  @override String get aiCompilerTitle => 'Compilador de IA';
  @override String get compilerTab => 'Compilador';
  @override String get outputTab => 'Saída';
  @override String get writeYourCodeHere => 'Escreva seu código aqui...';
  @override String remainingUsesShort(int count) => '($count usos restantes)';
  @override String nextUseShort(String time) => '($time)';
  @override String get outputTitle => 'Saída:';
  @override String get noOutputYet => '// Nenhuma saída ainda.';
  @override String get aiAnalysisTitle => 'Análise de IA:';
  @override String get aiAssistantButton => 'Assistente de IA';
  @override String get aiAnalysisButton => 'Análise de IA';
  @override String get commentsTitle => 'Comentários';
  @override String get beTheFirstToComment => 'Seja o primeiro a comentar!';
  @override String get writeYourComment => 'Escreva seu comentário...';
  @override String get createNewPostTooltip => 'Criar Nova Publicação';
  @override String get communityTitle => 'Comunidade';
  @override String get feedTab => 'Feed';
  @override String get leaderboardTab => 'Placar';
  @override String errorPrefix(String error) => 'Erro: $error';
  @override String get noPostsYet => 'Ainda não há publicações.\nSeja o primeiro a criar uma!';
  @override String get noDataFound => 'Nenhum dado encontrado.';
  // YENİ EKLENEN TOPLULUK METİNLERİ
  @override String get leaderboardTitle => 'Placar';
  @override String yourRank(int rank) => 'Sua Classificação: $rank';
  @override String get tapForFullLeaderboard => 'Toque para ver o placar completo';
  @override String get createNewPostTitle => 'Criar Nova Publicação';
  @override String get postContentCannotBeEmpty => 'O conteúdo da publicação não pode estar vazio.';
  @override String get whatAreYouThinking => 'O que você está pensando?';
  @override String get postContentHint => 'Escreva sua pergunta ou a descrição do projeto aqui...';
  @override String get codeSnippetOptional => 'Trecho de Código (Opcional)';
  @override String get pasteYourCodeHere => 'Cole seu código aqui...';
  @override String get learnLabel => 'Aprender';
  @override String get compilerLabel => 'Compilador';
  @override String get communityLabel => 'Comunidade';
  @override String get profileLabel => 'Perfil';
  @override String get congratulations => 'Parabéns!';
  @override String get lessonCompleteSubtitle => 'Você concluiu esta lição com sucesso. Você aprendeu coisas novas e deu mais um passo à frente.';
  @override String get finishAndReturnButton => 'Concluir e Voltar';
  @override String get lessonStartsWithQuiz => 'Esta lição começa diretamente com perguntas.\nClique em "Continuar" quando estiver pronto!';
  @override String get tapToContinue => 'Toque para continuar';
  @override String get profileLoadError => 'Falha ao carregar o perfil.';
  @override String get deletePostTitle => 'Excluir Publicação';
  @override String get deletePostConfirmation => 'Tem certeza de que deseja excluir permanentemente esta publicação?';
  @override String get cancel => 'Cancelar';
  @override String get delete => 'Excluir';
  @override String get postDeletedSuccess => 'Publicação excluída com sucesso.';
  @override String postDeleteError(String error) => 'Erro ao excluir a publicação: $error';
  @override String accountDeleteError(String error) => 'Ocorreu um erro ao excluir a conta: $error';
  @override String get deleteAccountTitle => 'Tem certeza de que deseja excluir sua conta?';
  @override String get deleteAccountConfirmation => 'Esta ação não pode ser desfeita. Todo o seu progresso, XP e dados serão excluídos permanentemente.';
  @override String get deleteAccountButton => 'Excluir Conta';
  @override String get settingsTitle => 'Configurações';
  @override String get defaultUsername => 'Usuário';
  @override String levelAndXp(int level, String xp) => 'Nvl $level - $xp XP';
  @override String get followers => 'Seguidores';
  @override String get following => 'Seguindo';
  @override String get myPosts => 'Minhas Publicações';
  @override String get postsLoadError => 'Não foi possível carregar as publicações.';
  @override String get noPostsYetProfile => 'Você ainda não tem publicações.';
  @override String get freeUser => 'Usuário Gratuito';
  @override String get streak => 'Sequência';
  @override String projectFinalCodeTitle(String title) => '$title - Código Final';
  @override String get projectCompleteTitle => 'Parabéns, Projeto Concluído!';
  @override String get projectCompleteSubtitle => 'Aqui está o código final quando todas as etapas são combinadas:';
  @override String get awesomeReturnButton => 'Incrível! Voltar';
  @override String get completeProjectButton => 'Concluir Projeto e Ver Código Final';
  @override String questionProgress(int current, int total) => 'Pergunta $current / $total';
  @override String get wrongAnswerTryAgain => 'Resposta errada, tente novamente!';
  @override String get skipButton => 'Pular';
  @override String get tryAgainButton => 'Tentar Novamente';
  @override String get submitButton => 'Enviar';
  @override String suggestionWelcome(String name) => 'Incrível, $name!';
  @override String get yourSuggestedLanguageIs => 'Sua linguagem inicial mais adequada é:';
  @override String startWithSuggestedLanguage(String language) => 'Sim, começar com $language';
  @override String get chooseAnotherLanguage => 'Quero escolher outra linguagem';
  @override String get pleaseEnterYourName => 'Por favor, insira seu nome.';
  @override String get pleaseSelectYourKnowledge => 'Por favor, selecione seu nível de conhecimento.';
  @override String get pleaseSelectYourGoal => 'Por favor, selecione seu objetivo.';
  @override String get buddy => 'Amigo';
  @override String get whatsYourName => 'Olá! \nQual é o seu nome?';
  @override String get typeNameHere => 'Digite seu nome aqui';
  @override String get howDoYouRateYourKnowledge => 'Como você avalia seu conhecimento de programação?';
  @override String get knowledgeLevelNone => 'Eu não sei nada';
  @override String get knowledgeLevelBasic => 'Eu sei um pouco';
  @override String get knowledgeLevelIntermediate => 'Quero me aprimorar';
  @override String get whatIsYourGoal => 'O que você quer fazer com código?';
  @override String get goalWeb => 'Construir um site';
  @override String get goalMobile => 'Desenvolver um aplicativo móvel';
  @override String get goalGame => 'Fazer um jogo';
  @override String get goalJustLearning => 'Apenas por aprender';
  @override String get finishButton => 'Finalizar';
  @override String get followingStatus => 'Seguindo';
  @override String get followButton => 'Seguir';
  @override String likeCount(int count) => '$count curtidas';
  @override String commentCount(int count) => '$count Comentários';
  @override String get addCommentButton => 'Adicionar Comentário';
  @override String yearsAgo(int count) => 'há ${count}a';
  @override String monthsAgo(int count) => 'há ${count}m';
  @override String weeksAgo(int count) => 'há ${count}s';
  @override String daysAgo(int count) => 'há ${count}d';
  @override String hoursAgo(int count) => 'há ${count}h';
  @override String minutesAgo(int count) => 'há ${count}m';
  @override String get justNow => 'agora mesmo';
  @override String get pricingLoadError => 'Falha ao carregar as informações de preço. Por favor, tente novamente.';
  @override String get somethingWentWrong => 'Algo deu errado.';
  @override String get premiumBenefit1 => 'Remova as restrições com acesso ilimitado às lições, obtenha acesso instantâneo a todo o conteúdo.';
  @override String get premiumBenefit2 => 'Aproveite limites de uso muito mais altos para o Assistente de IA e o Compilador de IA.';
  @override String get premiumBenefit3 => 'Ganhe certificados de conquista especiais para cada lição que concluir e exiba-os em seu perfil.';
  @override String get monthly => 'MENSAL';
  @override String get yearly => 'ANUAL';
  @override String get startNow => 'Comece Agora';
  @override String get saveAndStart => 'Economize e Comece';
  @override String get paymentDisclaimer => 'Os pagamentos serão cobrados na sua conta da loja de aplicativos. As assinaturas são renovadas automaticamente, a menos que sejam canceladas pelo menos 24 horas antes do final do período atual.';

  // WELCOME SCREEN YENİ EKLENEN METİNLER
  @override String get welcomeSubtitle => 'Você está pronto para dar o seu primeiro passo no mundo do código?';
  @override String get continueWithGoogle => 'Continuar com o Google';
  @override String get continueAsGuest => 'Continuar sem fazer login';

  @override String get privacyPolicyTitle => 'Política de Privacidade';
  @override
  String get privacyPolicyContent => '''
Esta Política de Privacidade descreve como as suas informações são recolhidas, utilizadas e partilhadas pela ENEM SOFTWARE ("nós") quando utiliza a nossa aplicação móvel "Codein" ("Serviço").

1. Informações que Recolhemos

a. Informações que Fornece Diretamente:
   - Informações da Conta: Ao criar uma conta, fornece um nome de utilizador e, opcionalmente, associa uma conta Google. Recolhemos o seu ID de Utilizador, Nome de Utilizador e uma Etiqueta de Utilizador única.
   - Informações do Perfil: Os seus Pontos de Experiência (XP), Nível, Número de Seguidores e Número de Pessoas que Segue são armazenados como parte do seu perfil.
   - Respostas ao Inquérito Inicial: As suas respostas a perguntas sobre o seu nível de conhecimento e objetivos de aprendizagem durante a configuração inicial são recolhidas.
   - Conteúdo da Comunidade: Quaisquer publicações que crie (conteúdo, fragmentos de código, escolha de idioma), comentários que faça e interações (gostos, seguimentos).
   - Interações com IA: Mensagens de chat que envia para o Assistente de IA e fragmentos de código que submete ao Compilador de IA.

b. Informações Recolhidas Automaticamente:
   - Dados de Utilização: Recolhemos informações sobre as suas interações com o Serviço, como lições concluídas, resultados de questionários, cursos acedidos, duração da utilização e utilização de funcionalidades de IA (contagem de utilizações, carimbo de data/hora da última reposição).
   - Informações do Dispositivo: Podemos recolher informações específicas do dispositivo (como o ID do seu dispositivo móvel, sistema operativo e endereço IP) para fins de segurança e otimização do serviço.
   - Registos de Atividade: As datas da sua atividade diária для acompanhamento de sequências.
   - Último Código Utilizado: O último fragmento de código que escreveu no Compilador de IA é guardado localmente no seu dispositivo por conveniência.

2. Como Utilizamos as Suas Informações

Utilizamos as informações recolhidas para vários fins, incluindo:
   - Fornecer, manter e melhorar o nosso Serviço, incluindo funcionalidades de aprendizagem essenciais e interações da comunidade.
   - Personalizar a sua experiência de aprendizagem e recomendar conteúdo relevante.
   - Gerir a sua conta de utilizador, acompanhar o seu progresso (XP, nível, lições concluídas, sequências).
   - Ativar e melhorar as funcionalidades da comunidade, como a criação de publicações, comentários, gostos e seguimentos.
   - Fornecer assistência de IA (chat e análise de código) e gerir os limites de utilização para utilizadores gratuitos.
   - Garantir a segurança e integridade do Serviço e prevenir atividades fraudulentas.
   - Cumprir as obrigações legais.

3. Como Partilhamos as Suas Informações

Podemos partilhar as suas informações com:
   - Supabase: O nosso fornecedor de serviços de backend que armazena todos os seus dados de conta, informações de perfil, conteúdo da comunidade e registos de utilização de IA.
   - API do Google Gemini: As suas mensagens de chat e fragmentos de código são enviados para o serviço de IA da Google para processamento e para gerar uma resposta.
   - Outros Utilizadores: O seu nome de utilizador, etiqueta de utilizador, XP, nível, seguidores/seguidos e as suas publicações/comentários públicos da comunidade são visíveis para outros utilizadores dentro da aplicação.
   - Requisitos Legais: Podemos divulgar as suas informações quando exigido por lei ou em resposta a pedidos válidos de autoridades públicas.
   - Transferências de Negócios: No caso de uma fusão, aquisição ou venda de ativos, as suas informações podem ser transferidas.

Não vendemos os seus dados pessoais a terceiros.

4. Segurança dos Dados

Implementamos medidas de segurança razoáveis (por exemplo, encriptação de dados e controlos de acesso via Supabase) concebidas para proteger as suas informações contra acesso, alteração, divulgação ou destruição não autorizados.

5. Retenção de Dados

Retemos as suas informações pessoais pelo tempo necessário para fornecer o Serviço, cumprir as nossas obrigações legais, resolver disputas e fazer cumprir os nossos acordos. Tem o direito de solicitar a eliminação da sua conta.

6. Os Seus Direitos

Tem certos direitos относительно das suas informações pessoais, incluindo:
   - Acesso: Solicitar uma cópia dos dados pessoais que mantemos sobre si.
   - Retificação: Solicitar a correção de dados pessoais imprecisos ou incompletos.
   - Eliminação: Solicitar a eliminação da sua conta e dos dados pessoais associados (isto pode ser iniciado a partir das definições do Ecrã de Perfil).
   - Oposição: Opor-se ao nosso processamento dos seus dados pessoais.

Para exercer qualquer um destes direitos, por favor contacte-nos através de enemsoft@gmail.com.

7. Serviços de Terceiros

O nosso Serviço depende de serviços de terceiros como o Supabase e o Google Gemini. A utilização de dados por estes serviços é regida pelas suas próprias políticas de privacidade. Não somos responsáveis pelas práticas de privacidade destes serviços de terceiros.

8. Alterações a Esta Política de Privacidade

Podemos atualizar a nossa Política de Privacidade de tempos a tempos. Notificá-lo-emos de quaisquer alterações publicando a nova Política de Privacidade nesta página. Aconselha-se a rever esta Política de Privacidade periodicamente para quaisquer alterações.

9. Contacte-nos

Se tiver alguma questão sobre esta Política de Privacidade, por favor contacte-nos:
   - Por e-mail: enemsoft@gmail.com

Ao continuar a utilizar o Serviço, reconhece que leu e compreendeu esta Política de Privacidade.
''';
  @override String get acceptPrivacyPolicy => 'Aceitar e Continuar';
  @override String get declinePrivacyPolicy => 'Recusar e Sair';
  @override String get privacyDeclinedMessage => 'Você deve aceitar a política de privacidade para usar o aplicativo.';

  @override
  String get loginForThisFeature => 'Você deve fazer login para este recurso';
  @override
  String get loginForThisFeatureSubtitle => 'Faça login com sua conta para entrar na comunidade, usar o assistente de IA e ver seu perfil.';

  @override
  String get welcomeTitle => 'Olá!';

  @override
  String get loggingIn => 'Iniciando sessão...';

  @override String get featuredPythonTitle => 'Comece com Python';
  @override String get featuredPythonSubtitle => 'Comece sua jornada com a linguagem mais popular de inteligência artificial e ciência de dados. Seu primeiro passo na programação começa aqui.';
  @override String get featuredAiTitle => 'Consulte o Assistente de IA';
  @override String get featuredAiSubtitle => 'Encontrou um erro ao codificar ou há um conceito que você не entende? Seu assistente com inteligência artificial está a apenas um clique de distância.';
  @override String get chatNow => 'Converse agora';
  @override String get featuredJavaTitle => 'Domine o Java';
  @override String get featuredJavaSubtitle => 'Domine a linguagem que alimenta sistemas de nível empresarial e aplicativos Android. Crie soluções poderosas e escaláveis com Java hoje.';

  @override String get categoryWebFrontend => 'Desenvolvimento Web: Frontend';
  @override String get categoryWebBackend => 'Desenvolvimento Web: Backend';
  @override String get categoryMobileAndroid => 'Desenvolvimento Móvel (Android)';
  @override String get categorySystemPerformance => 'Programação de Sistemas e Alto Desempenho';
  @override String get categoryDataScienceAI => 'Ciência de Dados, Inteligência Artificial e Automação';
  @override String get categoryDatabase => 'Gerenciamento de Banco de Dados';
  @override String get comingSoon => 'Em breve';

}

// Rusça (RU)
class _L10nRu implements L10n {
  @override String get appTitle => 'Учимся кодировать';
  @override String get coursesTitle => 'Курсы';
  @override String get pythonDescription => 'Общего назначения, наука о данных, искусственный интеллект';
  @override String get javascriptDescription => 'Веб-разработка (фронтенд/бэкенд)';
  @override String get javaDescription => 'Android, корпоративные приложения';
  @override String get cDescription => 'Системное программирование, встраиваемые системы';
  @override String get cplusplusDescription => 'Разработка игр, высокопроизводительное ПО';
  @override String get kotlinDescription => 'Современная разработка под Android';
  @override String get htmlCssDescription => 'Базовая структура и стиль веб-страниц';
  @override String get htmlDescription => 'Основной строительный блок и скелет веб-страниц';
  @override String get cssDescription => 'Искусство придания стиля и внешнего вида веб-страницам';
  @override String get sqlDescription => 'Язык управления базами данных и запросов';
  @override String get requiresHtmlKnowledge => 'Требуются знания HTML';
  @override String get availableSoon => 'Скоро';
  @override String get taglineBeginnerFriendly => 'Для начинающих';
  @override String get taglineLanguageOfTheWeb => 'Язык веба';
  @override String get taglineEnterprisePower => 'Корпоративная мощь';
  @override String get taglineHighPerformance => 'Высокая производительность';
  @override String get taglineSystemLanguage => 'Системный язык';
  @override String get taglineModernAndroid => 'Современный Android';
  @override String get continueButton => 'Продолжить';
  @override String get challengeArenaTitle => 'Код-Арена';
  @override String get dailyChallengeTitle => 'Ежедневное испытание';
  @override String get dailyChallengeCompletedTitle => 'Вы выполнили ежедневное испытание!';
  @override String get dailyChallengeCompletedSubtitle => 'Отличная работа! Возвращайтесь завтра за новым вопросом.';
  @override String get nextChallengeCountdown => 'ВРЕМЯ ДО СЛЕДУЮЩЕГО ИСПЫТАНИЯ:';
  @override String get miniProjectsTitle => 'Мини-проекты';
  @override String get miniProjectsSubtitle => 'Используйте полученные знания для создания конкретного и ощутимого результата!';
  @override String get challengeLoadError => 'Не удалось загрузить вопрос испытания.';
  @override String get unknownQuestionError => 'Неизвестный тип вопроса.';
  @override String get pricingInfoLoadError => 'Не удалось загрузить информацию о ценах. Пожалуйста, попробуйте еще раз.';
  @override String get aiWelcomeMessage => 'Привет! Я здесь, чтобы помочь вам в вашем путешествии по кодированию. У вас есть тема на уме, вы хотите попрактиковаться, или вы бы хотели, чтобы я задал вам несколько вопросов?';
  @override String get aiGenericError => 'Извините, произошла ошибка. Пожалуйста, попробуйте еще раз.';
  @override String get aiMessageTooLong => 'Ваше сообщение слишком длинное. Пожалуйста, используйте не более 2000 символов.';
  @override String get aiMessageTooShort => 'Пожалуйста, задайте более описательный вопрос (не менее 15 символов).';
  @override String get aiAssistantTitle => 'ИИ-помощник';
  @override String get getPremium => 'Получить Премиум';
  @override String remainingUses(int count) => 'Осталось использований: $count';
  @override String nextUse(String time) => 'Следующее использование: $time';
  @override String get typeAMessage => 'Введите сообщение...';
  @override String get clickAiAnalysis => 'Нажмите кнопку "ИИ-анализ", чтобы увидеть результаты.';
  @override String get codeTooLong => '// Слишком длинный код!';
  @override String analysisCodeTooLong(int maxChars) => 'Код, который вы отправили на анализ, слишком длинный. Пожалуйста, отправьте код длиной не более $maxChars символов.';
  @override String get aiCompilerTitle => 'ИИ-компилятор';
  @override String get compilerTab => 'Компилятор';
  @override String get outputTab => 'Вывод';
  @override String get writeYourCodeHere => 'Напишите свой код здесь...';
  @override String remainingUsesShort(int count) => '(осталось $count использований)';
  @override String nextUseShort(String time) => '($time)';
  @override String get outputTitle => 'Вывод:';
  @override String get noOutputYet => '// Пока нет вывода.';
  @override String get aiAnalysisTitle => 'ИИ-анализ:';
  @override String get aiAssistantButton => 'ИИ-помощник';
  @override String get aiAnalysisButton => 'ИИ-анализ';
  @override String get commentsTitle => 'Комментарии';
  @override String get beTheFirstToComment => 'Будьте первым, кто оставит комментарий!';
  @override String get writeYourComment => 'Напишите свой комментарий...';
  @override String get createNewPostTooltip => 'Создать новую публикацию';
  @override String get communityTitle => 'Сообщество';
  @override String get feedTab => 'Лента';
  @override String get leaderboardTab => 'Таблица лидеров';
  @override String errorPrefix(String error) => 'Ошибка: $error';
  @override String get noPostsYet => 'Публикаций пока нет.\nБудьте первым, кто создаст одну!';
  @override String get noDataFound => 'Данные не найдены.';
  // YENİ EKLENEN TOPLULUK METİNLERİ
  @override String get leaderboardTitle => 'Таблица лидеров';
  @override String yourRank(int rank) => 'Ваш ранг: $rank';
  @override String get tapForFullLeaderboard => 'Нажмите, чтобы увидеть полную таблицу лидеров';
  @override String get createNewPostTitle => 'Создать новую публикацию';
  @override String get postContentCannotBeEmpty => 'Содержание публикации не может быть пустым.';
  @override String get whatAreYouThinking => 'О чем вы думаете?';
  @override String get postContentHint => 'Напишите свой вопрос или описание проекта здесь...';
  @override String get codeSnippetOptional => 'Фрагмент кода (необязательно)';
  @override String get pasteYourCodeHere => 'Вставьте свой код сюда...';
  @override String get learnLabel => 'Учиться';
  @override String get compilerLabel => 'Компилятор';
  @override String get communityLabel => 'Сообщество';
  @override String get profileLabel => 'Профиль';
  @override String get congratulations => 'Поздравляем!';
  @override String get lessonCompleteSubtitle => 'Вы успешно завершили этот урок. Вы узнали что-то новое и сделали еще один шаг вперед.';
  @override String get finishAndReturnButton => 'Завершить и вернуться';
  @override String get lessonStartsWithQuiz => 'Этот урок начинается сразу с вопросов.\nНажмите "Продолжить", когда будете готовы!';
  @override String get tapToContinue => 'Нажмите, чтобы продолжить';
  @override String get profileLoadError => 'Не удалось загрузить профиль.';
  @override String get deletePostTitle => 'Удалить публикацию';
  @override String get deletePostConfirmation => 'Вы уверены, что хотите навсегда удалить эту публикацию?';
  @override String get cancel => 'Отмена';
  @override String get delete => 'Удалить';
  @override String get postDeletedSuccess => 'Публикация успешно удалена.';
  @override String postDeleteError(String error) => 'Ошибка при удалении публикации: $error';
  @override String accountDeleteError(String error) => 'Произошла ошибка при удалении аккаунта: $error';
  @override String get deleteAccountTitle => 'Вы уверены, что хотите удалить свой аккаунт?';
  @override String get deleteAccountConfirmation => 'Это действие нельзя отменить. Весь ваш прогресс, опыт и данные будут удалены навсегда.';
  @override String get deleteAccountButton => 'Удалить аккаунт';
  @override String get settingsTitle => 'Настройки';
  @override String get defaultUsername => 'Пользователь';
  @override String levelAndXp(int level, String xp) => 'Ур. $level - $xp XP';
  @override String get followers => 'Подписчики';
  @override String get following => 'Подписки';
  @override String get myPosts => 'Мои публикации';
  @override String get postsLoadError => 'Не удалось загрузить публикации.';
  @override String get noPostsYetProfile => 'У вас пока нет публикаций.';
  @override String get freeUser => 'Бесплатный пользователь';
  @override String get streak => 'Серия';
  @override String projectFinalCodeTitle(String title) => '$title - Итоговый код';
  @override String get projectCompleteTitle => 'Поздравляем, проект завершен!';
  @override String get projectCompleteSubtitle => 'Вот итоговый код, когда все шаги объединены:';
  @override String get awesomeReturnButton => 'Отлично! Вернуться';
  @override String get completeProjectButton => 'Завершить проект и посмотреть итоговый код';
  @override String questionProgress(int current, int total) => 'Вопрос $current / $total';
  @override String get wrongAnswerTryAgain => 'Неправильный ответ, попробуйте еще раз!';
  @override String get skipButton => 'Пропустить';
  @override String get tryAgainButton => 'Попробовать снова';
  @override String get submitButton => 'Отправить';
  @override String suggestionWelcome(String name) => 'Отлично, $name!';
  @override String get yourSuggestedLanguageIs => 'Наиболее подходящий для вас стартовый язык:';
  @override String startWithSuggestedLanguage(String language) => 'Да, начать с $language';
  @override String get chooseAnotherLanguage => 'Я хочу выбрать другой язык';
  @override String get pleaseEnterYourName => 'Пожалуйста, введите ваше имя.';
  @override String get pleaseSelectYourKnowledge => 'Пожалуйста, выберите ваш уровень знаний.';
  @override String get pleaseSelectYourGoal => 'Пожалуйста, выберите вашу цель.';
  @override String get buddy => 'Дружище';
  @override String get whatsYourName => 'Привет! \nКак вас зовут?';
  @override String get typeNameHere => 'Введите ваше имя здесь';
  @override String get howDoYouRateYourKnowledge => 'Как бы вы оценили свои знания в программировании?';
  @override String get knowledgeLevelNone => 'Я ничего не знаю';
  @override String get knowledgeLevelBasic => 'Я знаю немного';
  @override String get knowledgeLevelIntermediate => 'Я хочу совершенствоваться';
  @override String get whatIsYourGoal => 'Что вы хотите делать с помощью кода?';
  @override String get goalWeb => 'Создать веб-сайт';
  @override String get goalMobile => 'Разработать мобильное приложение';
  @override String get goalGame => 'Сделать игру';
  @override String get goalJustLearning => 'Просто для обучения';
  @override String get finishButton => 'Завершить';
  @override String get followingStatus => 'В подписках';
  @override String get followButton => 'Подписаться';
  @override String likeCount(int count) => '$count лайков';
  @override String commentCount(int count) => '$count комментариев';
  @override String get addCommentButton => 'Добавить комментарий';
  @override String yearsAgo(int count) => '${count} г. назад';
  @override String monthsAgo(int count) => '${count} мес. назад';
  @override String weeksAgo(int count) => '${count} нед. назад';
  @override String daysAgo(int count) => '${count} д. назад';
  @override String hoursAgo(int count) => '${count} ч. назад';
  @override String minutesAgo(int count) => '${count} мин. назад';
  @override String get justNow => 'только что';
  @override String get pricingLoadError => 'Не удалось загрузить информацию о ценах. Пожалуйста, попробуйте еще раз.';
  @override String get somethingWentWrong => 'Что-то пошло не так.';
  @override String get premiumBenefit1 => 'Снимите ограничения с неограниченным доступом к урокам, получите мгновенный доступ ко всему контенту.';
  @override String get premiumBenefit2 => 'Наслаждайтесь гораздо более высокими лимитами использования для ИИ-помощника и ИИ-компилятора.';
  @override String get premiumBenefit3 => 'Получайте специальные сертификаты достижений за каждый пройденный урок и отображайте их в своем профиле.';
  @override String get monthly => 'ЕЖЕМЕСЯЧНО';
  @override String get yearly => 'ЕЖЕГОДНО';
  @override String get startNow => 'Начать сейчас';
  @override String get saveAndStart => 'Сэкономить и начать';
  @override String get paymentDisclaimer => 'Платежи будут списаны с вашего счета в магазине приложений. Подписки автоматически продлеваются, если не отменены как минимум за 24 часа до окончания текущего периода.';

  // WELCOME SCREEN YENİ EKLENEN METİNLER
  @override String get welcomeSubtitle => 'Готовы ли вы сделать свой первый шаг в мир кода?';
  @override String get continueWithGoogle => 'Продолжить с Google';
  @override String get continueAsGuest => 'Продолжить без входа';


  @override String get privacyPolicyTitle => 'Политика конфиденциальности';
  @override String get privacyPolicyContent => '''
Настоящая Политика конфиденциальности описывает, как ваша информация собирается, используется и передается компанией ENEM SOFTWARE ("мы" или "нас"), когда вы используете наше мобильное приложение "Codein" ("Сервис").

1. Информация, которую мы собираем

а. Информация, которую вы предоставляете напрямую:
   - Информация об учетной записи: При создании учетной записи вы предоставляете имя пользователя и по желанию привязываете учетную запись Google. Мы собираем ваш идентификатор пользователя, имя пользователя и уникальный тег пользователя.
   - Информация профиля: Ваши очки опыта (XP), уровень, количество подписчиков и количество подписок хранятся как часть вашего профиля.
   - Ответы на первоначальный опрос: Ваши ответы на вопросы о вашем уровне знаний и целях обучения во время первоначальной настройки собираются.
   - Контент сообщества: Любые созданные вами посты (контент, фрагменты кода, выбор языка), комментарии и взаимодействия (лайки, подписки).
   - Взаимодействия с ИИ: Сообщения в чате, которые вы отправляете ИИ-помощнику, и фрагменты кода, которые вы отправляете в ИИ-компилятор.

б. Автоматически собираемая информация:
   - Данные об использовании: Мы собираем информацию о ваших взаимодействиях с Сервисом, такую как пройденные уроки, результаты викторин, доступ к курсам, продолжительность использования и использование функций ИИ (количество использований, временная метка последнего сброса).
   - Информация об устройстве: Мы можем собирать специфичную для устройства информацию (например, идентификатор вашего мобильного устройства, операционную систему и IP-адрес) в целях безопасности и оптимизации сервиса.
   - Журналы активности: Даты вашей ежедневной активности для отслеживания серий.
   - Последний использованный код: Последний фрагмент кода, который вы написали в ИИ-компиляторе, сохраняется локально на вашем устройстве для удобства.

2. Как мы используем вашу информацию

Мы используем собранную информацию для различных целей, в том числе:
   - Для предоставления, поддержания и улучшения нашего Сервиса, включая основные функции обучения и взаимодействия в сообществе.
   - Для персонализации вашего учебного опыта и рекомендации релевантного контента.
   - Для управления вашей учетной записью, отслеживания вашего прогресса (XP, уровень, пройденные уроки, серии).
   - Для включения и улучшения функций сообщества, таких как создание постов, комментирование, лайки и подписки.
   - Для предоставления помощи ИИ (чат и анализ кода) и управления лимитами использования для бесплатных пользователей.
   - Для обеспечения безопасности и целостности Сервиса и предотвращения мошеннических действий.
   - Для соблюдения юридических обязательств.

3. Как мы делимся вашей информацией

Мы можем делиться вашей информацией с:
   - Supabase: Наш поставщик бэкенд-услуг, который хранит все данные вашей учетной записи, информацию профиля, контент сообщества и журналы использования ИИ.
   - Google Gemini API: Ваши сообщения в чате и фрагменты кода отправляются в сервис ИИ Google для обработки и генерации ответа.
   - Другие пользователи: Ваше имя пользователя, тег пользователя, XP, уровень, подписчики/подписки и ваши публичные посты/комментарии в сообществе видны другим пользователям в приложении.
   - Юридические требования: Мы можем раскрывать вашу информацию, если это требуется по закону или в ответ на действительные запросы государственных органов.
   - Передача бизнеса: В случае слияния, поглощения или продажи активов ваша информация может быть передана.

Мы не продаем ваши персональные данные третьим лицам.

4. Безопасность данных

Мы принимаем разумные меры безопасности (например, шифрование данных и контроль доступа через Supabase), предназначенные для защиты вашей информации от несанкционированного доступа, изменения, раскрытия или уничтожения.

5. Хранение данных

Мы храним вашу личную информацию до тех пор, пока это необходимо для предоставления Сервиса, соблюдения наших юридических обязательств, разрешения споров и обеспечения соблюдения наших соглашений. Вы имеете право запросить удаление вашей учетной записи.

6. Ваши права

У вас есть определенные права в отношении вашей личной информации, в том числе:
   - Доступ: Запросить копию личных данных, которые мы храним о вас.
   - Исправление: Запросить исправление неточных или неполных личных данных.
   - Удаление: Запросить удаление вашей учетной записи и связанных с ней личных данных (это можно инициировать в настройках экрана профиля).
   - Возражение: Возражать против обработки нами ваших личных данных.

Чтобы воспользоваться любым из этих прав, пожалуйста, свяжитесь с нами по адресу enemsoft@gmail.com.

7. Сторонние сервисы

Наш Сервис использует сторонние сервисы, такие как Supabase и Google Gemini. Использование данных этими сервисами регулируется их собственными политиками конфиденциальности. Мы не несем ответственности за политику конфиденциальности этих сторонних сервисов.

8. Изменения в настоящей Политике конфиденциальности

Мы можем время от времени обновлять нашу Политику конфиденциальности. Мы будем уведомлять вас о любых изменениях, публикуя новую Политику конфиденциальности на этой странице. Рекомендуется периодически просматривать настоящую Политику конфиденциальности на предмет любых изменений.

9. Свяжитесь с нами

Если у вас есть какие-либо вопросы по поводу настоящей Политики конфиденциальности, пожалуйста, свяжитесь с нами:
   - По электронной почте: enemsoft@gmail.com

Продолжая использовать Сервис, вы подтверждаете, что прочитали и поняли настоящую Политику конфиденциальности.
''';
  @override String get acceptPrivacyPolicy => 'Принять и продолжить';
  @override String get declinePrivacyPolicy => 'Отклонить и выйти';
  @override String get privacyDeclinedMessage => 'Вы должны принять политику конфиденциальности, чтобы использовать приложение.';

  @override
  String get loginForThisFeature => 'Вы должны войти в систему для этой функции';
  @override
  String get loginForThisFeatureSubtitle => 'Пожалуйста, войдите в свою учетную запись, чтобы присоединиться к сообществу, использовать ИИ-помощника и просматривать свой профиль.';

  @override
  String get welcomeTitle => 'Привет!';

  @override
  String get loggingIn => 'Выполняется вход...';

  @override String get featuredPythonTitle => 'Начните с Python';
  @override String get featuredPythonSubtitle => 'Начните свое путешествие с самого популярного языка искусственного интеллекта и науки о данных. Ваш первый шаг в программировании начинается здесь.';
  @override String get featuredAiTitle => 'Проконсультируйтесь с помощником по искусственному интеллекту';
  @override String get featuredAiSubtitle => 'Вы столкнулись с ошибкой при написании кода или есть концепция, которую вы не понимаете? Ваш помощник на базе искусственного интеллекта находится всего в одном клике.';
  @override String get chatNow => 'Начать чат';
  @override String get featuredJavaTitle => 'Освойте Java';
  @override String get featuredJavaSubtitle => 'Освойте язык, на котором работают системы корпоративного уровня и приложения для Android. Создавайте мощные, масштабируемые решения с помощью Java уже сегодня.';

  @override String get categoryWebFrontend => 'Веб-разработка: Frontend';
  @override String get categoryWebBackend => 'Веб-разработка: Backend';
  @override String get categoryMobileAndroid => 'Мобильная разработка (Android)';
  @override String get categorySystemPerformance => 'Системное программирование и высокая производительность';
  @override String get categoryDataScienceAI => 'Наука о данных, искусственный интеллект и автоматизация';
  @override String get categoryDatabase => 'Управление базами данных';
  @override String get comingSoon => 'Скоро';

}

// Endonezce (ID)
class _L10nId implements L10n {
  @override String get appTitle => 'Belajar Kode';
  @override String get coursesTitle => 'Kursus';
  @override String get pythonDescription => 'Tujuan umum, ilmu data, kecerdasan buatan';
  @override String get javascriptDescription => 'Pengembangan web (frontend/backend)';
  @override String get javaDescription => 'Android, aplikasi perusahaan';
  @override String get cDescription => 'Pemrograman sistem, sistem tertanam';
  @override String get cplusplusDescription => 'Pengembangan game, perangkat lunak berkinerja tinggi';
  @override String get kotlinDescription => 'Pengembangan Android modern';
  @override String get htmlCssDescription => 'Struktur dan gaya dasar halaman web';
  @override String get htmlDescription => 'Blok bangunan dasar dan kerangka halaman web';
  @override String get cssDescription => 'Seni memberi gaya dan penampilan pada halaman web';
  @override String get sqlDescription => 'Bahasa manajemen dan kueri basis data';
  @override String get requiresHtmlKnowledge => 'Membutuhkan pengetahuan HTML';
  @override String get availableSoon => 'Segera Tersedia';
  @override String get taglineBeginnerFriendly => 'Ramah Pemula';
  @override String get taglineLanguageOfTheWeb => 'Bahasa Web';
  @override String get taglineEnterprisePower => 'Kekuatan Perusahaan';
  @override String get taglineHighPerformance => 'Kinerja Tinggi';
  @override String get taglineSystemLanguage => 'Bahasa Sistem';
  @override String get taglineModernAndroid => 'Android Modern';
  @override String get continueButton => 'Lanjutkan';
  @override String get challengeArenaTitle => 'Arena Kode';
  @override String get dailyChallengeTitle => 'Tantangan Harian';
  @override String get dailyChallengeCompletedTitle => 'Anda telah menyelesaikan tantangan harian!';
  @override String get dailyChallengeCompletedSubtitle => 'Kerja bagus! Kembalilah besok untuk pertanyaan baru.';
  @override String get nextChallengeCountdown => 'WAKTU HINGGA TANTANGAN BERIKUTNYA:';
  @override String get miniProjectsTitle => 'Proyek Mini';
  @override String get miniProjectsSubtitle => 'Gunakan apa yang telah Anda pelajari untuk menciptakan hasil yang konkret dan nyata!';
  @override String get challengeLoadError => 'Gagal memuat pertanyaan tantangan.';
  @override String get unknownQuestionError => 'Jenis pertanyaan tidak dikenal.';
  @override String get pricingInfoLoadError => 'Gagal memuat informasi harga. Silakan coba lagi.';
  @override String get aiWelcomeMessage => 'Halo! Saya di sini untuk membantu Anda dalam perjalanan pengkodean Anda. Apakah Anda memiliki topik dalam pikiran, ingin berlatih, atau ingin saya mengajukan beberapa pertanyaan?';
  @override String get aiGenericError => 'Maaf, terjadi kesalahan. Silakan coba lagi.';
  @override String get aiMessageTooLong => 'Pesan Anda terlalu panjang. Harap gunakan maksimal 2000 karakter.';
  @override String get aiMessageTooShort => 'Harap ajukan pertanyaan yang lebih deskriptif (minimal 15 karakter).';
  @override String get aiAssistantTitle => 'Asisten AI';
  @override String get getPremium => 'Dapatkan Premium';
  @override String remainingUses(int count) => 'Penggunaan Tersisa: $count';
  @override String nextUse(String time) => 'Penggunaan Berikutnya: $time';
  @override String get typeAMessage => 'Ketik pesan...';
  @override String get clickAiAnalysis => 'Klik tombol "Analisis AI" untuk melihat hasilnya.';
  @override String get codeTooLong => '// Kode Terlalu Panjang!';
  @override String analysisCodeTooLong(int maxChars) => 'Kode yang Anda kirimkan untuk dianalisis terlalu panjang. Harap kirimkan kode dengan maksimal $maxChars karakter.';
  @override String get aiCompilerTitle => 'Kompiler AI';
  @override String get compilerTab => 'Kompiler';
  @override String get outputTab => 'Keluaran';
  @override String get writeYourCodeHere => 'Tulis kode Anda di sini...';
  @override String remainingUsesShort(int count) => '(sisa $count penggunaan)';
  @override String nextUseShort(String time) => '($time)';
  @override String get outputTitle => 'Keluaran:';
  @override String get noOutputYet => '// Belum ada keluaran.';
  @override String get aiAnalysisTitle => 'Analisis AI:';
  @override String get aiAssistantButton => 'Asisten AI';
  @override String get aiAnalysisButton => 'Analisis AI';
  @override String get commentsTitle => 'Komentar';
  @override String get beTheFirstToComment => 'Jadilah yang pertama berkomentar!';
  @override String get writeYourComment => 'Tulis komentar Anda...';
  @override String get createNewPostTooltip => 'Buat Postingan Baru';
  @override String get communityTitle => 'Komunitas';
  @override String get feedTab => 'Beranda';
  @override String get leaderboardTab => 'Papan Peringkat';
  @override String errorPrefix(String error) => 'Kesalahan: $error';
  @override String get noPostsYet => 'Belum ada postingan.\nJadilah yang pertama membuatnya!';
  @override String get noDataFound => 'Data tidak ditemukan.';
  // YENİ EKLENEN TOPLULUK METİNLERİ
  @override String get leaderboardTitle => 'Papan Peringkat';
  @override String yourRank(int rank) => 'Peringkat Anda: $rank';
  @override String get tapForFullLeaderboard => 'Ketuk untuk papan peringkat lengkap';
  @override String get createNewPostTitle => 'Buat Postingan Baru';
  @override String get postContentCannotBeEmpty => 'Konten postingan tidak boleh kosong.';
  @override String get whatAreYouThinking => 'Apa yang Anda pikirkan?';
  @override String get postContentHint => 'Tulis pertanyaan atau deskripsi proyek Anda di sini...';
  @override String get codeSnippetOptional => 'Cuplikan Kode (Opsional)';
  @override String get pasteYourCodeHere => 'Tempelkan kode Anda di sini...';
  @override String get learnLabel => 'Belajar';
  @override String get compilerLabel => 'Kompiler';
  @override String get communityLabel => 'Komunitas';
  @override String get profileLabel => 'Profil';
  @override String get congratulations => 'Selamat!';
  @override String get lessonCompleteSubtitle => 'Anda telah berhasil menyelesaikan pelajaran ini. Anda telah mempelajari hal-hal baru dan mengambil langkah maju lainnya.';
  @override String get finishAndReturnButton => 'Selesaikan & Kembali';
  @override String get lessonStartsWithQuiz => 'Pelajaran ini dimulai langsung dengan pertanyaan.\nKlik "Lanjutkan" saat Anda siap!';
  @override String get tapToContinue => 'Ketuk untuk melanjutkan';
  @override String get profileLoadError => 'Gagal memuat profil.';
  @override String get deletePostTitle => 'Hapus Postingan';
  @override String get deletePostConfirmation => 'Apakah Anda yakin ingin menghapus postingan ini secara permanen?';
  @override String get cancel => 'Batal';
  @override String get delete => 'Hapus';
  @override String get postDeletedSuccess => 'Postingan berhasil dihapus.';
  @override String postDeleteError(String error) => 'Kesalahan saat menghapus postingan: $error';
  @override String accountDeleteError(String error) => 'Terjadi kesalahan saat menghapus akun: $error';
  @override String get deleteAccountTitle => 'Apakah Anda Yakin Ingin Menghapus Akun Anda?';
  @override String get deleteAccountConfirmation => 'Tindakan ini tidak dapat diurungkan. Semua kemajuan, XP, dan data Anda akan dihapus secara permanen.';
  @override String get deleteAccountButton => 'Hapus Akun';
  @override String get settingsTitle => 'Pengaturan';
  @override String get defaultUsername => 'Pengguna';
  @override String levelAndXp(int level, String xp) => 'Lvl $level - $xp XP';
  @override String get followers => 'Pengikut';
  @override String get following => 'Mengikuti';
  @override String get myPosts => 'Postingan Saya';
  @override String get postsLoadError => 'Tidak dapat memuat postingan.';
  @override String get noPostsYetProfile => 'Anda belum memiliki postingan.';
  @override String get freeUser => 'Pengguna Gratis';
  @override String get streak => 'Rentetan';
  @override String projectFinalCodeTitle(String title) => '$title - Kode Final';
  @override String get projectCompleteTitle => 'Selamat, Proyek Selesai!';
  @override String get projectCompleteSubtitle => 'Berikut adalah kode final ketika semua langkah digabungkan:';
  @override String get awesomeReturnButton => 'Luar Biasa! Kembali';
  @override String get completeProjectButton => 'Selesaikan Proyek & Lihat Kode Final';
  @override String questionProgress(int current, int total) => 'Pertanyaan $current / $total';
  @override String get wrongAnswerTryAgain => 'Jawaban salah, coba lagi!';
  @override String get skipButton => 'Lewati';
  @override String get tryAgainButton => 'Coba Lagi';
  @override String get submitButton => 'Kirim';
  @override String suggestionWelcome(String name) => 'Luar biasa, $name!';
  @override String get yourSuggestedLanguageIs => 'Bahasa awal yang paling cocok untuk Anda adalah:';
  @override String startWithSuggestedLanguage(String language) => 'Ya, mulai dengan $language';
  @override String get chooseAnotherLanguage => 'Saya ingin memilih bahasa lain';
  @override String get pleaseEnterYourName => 'Harap masukkan nama Anda.';
  @override String get pleaseSelectYourKnowledge => 'Harap pilih tingkat pengetahuan Anda.';
  @override String get pleaseSelectYourGoal => 'Harap pilih tujuan Anda.';
  @override String get buddy => 'Sobat';
  @override String get whatsYourName => 'Halo! \nSiapa nama Anda?';
  @override String get typeNameHere => 'Ketik nama Anda di sini';
  @override String get howDoYouRateYourKnowledge => 'Bagaimana Anda menilai pengetahuan pemrograman Anda?';
  @override String get knowledgeLevelNone => 'Saya tidak tahu apa-apa';
  @override String get knowledgeLevelBasic => 'Saya tahu sedikit';
  @override String get knowledgeLevelIntermediate => 'Saya ingin meningkatkan diri';
  @override String get whatIsYourGoal => 'Apa yang ingin Anda lakukan dengan kode?';
  @override String get goalWeb => 'Membangun situs web';
  @override String get goalMobile => 'Mengembangkan aplikasi seluler';
  @override String get goalGame => 'Membuat game';
  @override String get goalJustLearning => 'Hanya untuk belajar';
  @override String get finishButton => 'Selesai';
  @override String get followingStatus => 'Mengikuti';
  @override String get followButton => 'Ikuti';
  @override String likeCount(int count) => '$count suka';
  @override String commentCount(int count) => '$count Komentar';
  @override String get addCommentButton => 'Tambah Komentar';
  @override String yearsAgo(int count) => '${count}thn lalu';
  @override String monthsAgo(int count) => '${count}bln lalu';
  @override String weeksAgo(int count) => '${count}mgg lalu';
  @override String daysAgo(int count) => '${count}h lalu';
  @override String hoursAgo(int count) => '${count}j lalu';
  @override String minutesAgo(int count) => '${count}m lalu';
  @override String get justNow => 'baru saja';
  @override String get pricingLoadError => 'Gagal memuat informasi harga. Silakan coba lagi.';
  @override String get somethingWentWrong => 'Terjadi kesalahan.';
  @override String get premiumBenefit1 => 'Hapus batasan dengan akses pelajaran tak terbatas, dapatkan akses instan ke semua konten.';
  @override String get premiumBenefit2 => 'Nikmati batas penggunaan yang jauh lebih tinggi untuk Asisten AI dan Kompiler AI.';
  @override String get premiumBenefit3 => 'Dapatkan sertifikat pencapaian khusus untuk setiap pelajaran yang Anda selesaikan dan tampilkan di profil Anda.';
  @override String get monthly => 'BULANAN';
  @override String get yearly => 'TAHUNAN';
  @override String get startNow => 'Mulai Sekarang';
  @override String get saveAndStart => 'Simpan & Mulai';
  @override String get paymentDisclaimer => 'Pembayaran akan dibebankan ke akun toko aplikasi Anda. Langganan diperpanjang secara otomatis kecuali dibatalkan setidaknya 24 jam sebelum akhir periode berjalan.';

  // WELCOME SCREEN YENİ EKLENEN METİNLER
  @override String get welcomeSubtitle => 'Apakah Anda siap mengambil langkah pertama Anda ke dunia kode?';
  @override String get continueWithGoogle => 'Lanjutkan dengan Google';
  @override String get continueAsGuest => 'Lanjutkan tanpa masuk';


  @override String get privacyPolicyTitle => 'Kebijakan Privasi';
  @override String get privacyPolicyContent => 'Kebijakan Privasi ini menjelaskan bagaimana informasi Anda dikumpulkan, digunakan, dan dibagikan oleh [Nama Perusahaan/Aplikasi Anda] ("kami" atau "kita") saat Anda menggunakan aplikasi seluler kami "Codein" ("Layanan").\n\n1. Informasi yang Kami Kumpulkan\n\na. Informasi yang Anda Berikan Secara Langsung:\n   - Informasi Akun: Saat Anda membuat akun, Anda memberikan nama pengguna dan secara opsional menautkan akun Google. Kami mengumpulkan ID Pengguna (User ID), Nama Pengguna (Username), dan Tag Pengguna unik (User Tag) Anda.\n   - Informasi Profil: Poin Pengalaman (XP), Level, Jumlah Pengikut, dan Jumlah Mengikuti Anda disimpan sebagai bagian dari profil Anda.\n   - Tanggapan Survei Awal: Tanggapan Anda terhadap pertanyaan mengenai tingkat pengetahuan dan tujuan pembelajaran Anda selama penyiapan awal dikumpulkan.\n   - Konten Komunitas: Setiap postingan yang Anda buat (konten, cuplikan kode, pilihan bahasa), komentar yang Anda buat, dan interaksi (suka, ikuti).\n   - Interaksi AI: Pesan obrolan yang Anda kirim ke Asisten AI dan cuplikan kode yang Anda kirimkan ke Kompilator AI.\n\nb. Informasi yang Dikumpulkan Secara Otomatis:\n   - Data Penggunaan: Kami mengumpulkan informasi tentang interaksi Anda dengan Layanan, seperti pelajaran yang diselesaikan, hasil kuis, kursus yang diakses, durasi penggunaan, dan penggunaan fitur AI (jumlah penggunaan, cap waktu reset terakhir).\n   - Informasi Perangkat: Untuk tujuan keamanan dan optimasi layanan, kami dapat mengumpulkan informasi spesifik perangkat (seperti ID perangkat seluler Anda, sistem operasi, dan alamat IP).\n   - Log Aktivitas: Tanggal aktivitas harian Anda untuk pelacakan streak.\n   - Kode Terakhir Digunakan: Cuplikan kode terakhir yang Anda tulis di Kompilator AI disimpan secara lokal di perangkat Anda untuk kenyamanan.\n\n2. Bagaimana Kami Menggunakan Informasi Anda\n\nKami menggunakan informasi yang dikumpulkan untuk berbagai tujuan, termasuk:\n   - Menyediakan, memelihara, dan meningkatkan Layanan kami, termasuk fitur pembelajaran inti dan interaksi komunitas.\n   - Mempersonalisasi pengalaman belajar Anda dan merekomendasikan konten yang relevan.\n   - Mengelola akun pengguna Anda, melacak kemajuan Anda (XP, level, pelajaran yang diselesaikan, streak).\n   - Mengaktifkan dan meningkatkan fitur komunitas seperti pembuatan postingan, berkomentar, menyukai, dan mengikuti.\n   - Menyediakan bantuan AI (obrolan dan analisis kode) dan mengelola batasan penggunaan untuk pengguna gratis.\n   - Memastikan keamanan dan integritas Layanan serta mencegah aktivitas penipuan.\n   - Mematuhi kewajiban hukum.\n\n3. Bagaimana Kami Membagikan Informasi Anda\n\nKami dapat membagikan informasi Anda dengan:\n   - Supabase: Penyedia layanan backend kami yang menyimpan semua data akun Anda, informasi profil, konten komunitas, dan log penggunaan AI.\n   - Google Gemini API: Pesan obrolan dan cuplikan kode Anda dikirim ke layanan AI Google untuk diproses dan menghasilkan respons.\n   - Pengguna Lain: Nama pengguna Anda, tag pengguna, XP, level, pengikut/mengikuti, dan postingan/komentar komunitas publik terlihat oleh pengguna lain dalam aplikasi.\n   - Persyaratan Hukum: Kami dapat mengungkapkan informasi Anda jika diwajibkan oleh hukum atau sebagai tanggapan atas permintaan yang sah oleh otoritas publik.\n   - Transfer Bisnis: Dalam hal merger, akuisisi, atau penjualan aset, informasi Anda dapat ditransfer.\n\nKami tidak menjual data pribadi Anda kepada pihak ketiga.\n\n4. Keamanan Data\n\nKami menerapkan langkah-langkah keamanan yang wajar (misalnya, enkripsi data dan kontrol akses melalui Supabase) yang dirancang untuk melindungi informasi Anda dari akses, perubahan, pengungkapan, atau penghancuran yang tidak sah.\n\n5. Retensi Data\n\nKami menyimpan informasi pribadi Anda selama diperlukan untuk menyediakan Layanan, mematuhi kewajiban hukum kami, menyelesaikan sengketa, dan menegakkan perjanjian kami. Anda memiliki hak untuk meminta penghapusan akun Anda.\n\n6. Hak Anda\n\nAnda memiliki hak-hak tertentu terkait informasi pribadi Anda, termasuk:\n   - Akses: Meminta salinan data pribadi yang kami miliki tentang Anda.\n   - Koreksi: Meminta koreksi data pribadi yang tidak akurat atau tidak lengkap.\n- Penghapusan: Meminta penghapusan akun Anda dan data pribadi terkait (ini dapat dimulai dari pengaturan Layar Profil).\n   - Keberatan: Mengajukan keberatan terhadap pemrosesan data pribadi Anda.\n\nUntuk menggunakan hak-hak ini, silakan hubungi kami di [Email Dukungan Anda].\n\n7. Layanan Pihak Ketiga\n\nLayanan kami bergantung pada layanan pihak ketiga seperti Supabase dan Google Gemini. Penggunaan data layanan ini diatur oleh kebijakan privasi masing-masing. Kami tidak bertanggung jawab atas praktik privasi layanan pihak ketiga ini.\n\n8. Perubahan pada Kebijakan Privasi Ini\n\nKami dapat memperbarui Kebijakan Privasi kami dari waktu ke waktu. Kami akan memberi tahu Anda tentang setiap perubahan dengan memposting Kebijakan Privasi baru di halaman ini. Anda disarankan untuk meninjau Kebijakan Privasi ini secara berkala untuk setiap perubahan.\n\n9. Hubungi Kami\n\nJika Anda memiliki pertanyaan tentang Kebijakan Privasi ini, silakan hubungi kami:\n   - Melalui email: [Email Dukungan Anda]\n   - Dengan mengunjungi situs web kami: [URL Situs Web Anda (Opsional)]\n\nDengan terus menggunakan Layanan, Anda mengakui bahwa Anda telah membaca dan memahami Kebijakan Privasi ini.';
  @override String get acceptPrivacyPolicy => 'Terima dan Lanjutkan';
  @override String get declinePrivacyPolicy => 'Tolak dan Keluar';
  @override String get privacyDeclinedMessage => 'Anda harus menerima kebijakan privasi untuk menggunakan aplikasi.';


  @override
  String get loginForThisFeature => 'Anda Harus Masuk untuk Fitur Ini';
  @override
  String get loginForThisFeatureSubtitle => 'Silakan masuk dengan akun Anda untuk bergabung dengan komunitas, menggunakan asisten AI, dan melihat profil Anda.';

  @override
  String get welcomeTitle => 'Halo!';

  @override
  String get loggingIn => 'Masuk...';

  @override String get featuredPythonTitle => 'Mulai dengan Python';
  @override String get featuredPythonSubtitle => 'Mulailah perjalanan Anda dengan bahasa paling populer di bidang kecerdasan buatan dan ilmu data. Langkah pertama Anda dalam pemrograman dimulai di sini.';
  @override String get featuredAiTitle => 'Konsultasikan dengan Asisten AI';
  @override String get featuredAiSubtitle => 'Apakah Anda mengalami kesalahan saat membuat kode atau ada konsep yang tidak Anda pahami? Asisten bertenaga AI Anda hanya dengan sekali klik.';
  @override String get chatNow => 'Mengobrol Sekarang';
  @override String get featuredJavaTitle => 'Kuasai Java';
  @override String get featuredJavaSubtitle => 'Kuasai bahasa yang mendukung sistem tingkat perusahaan dan aplikasi Android. Bangun solusi yang kuat dan dapat diskalakan dengan Java hari ini.';

  @override String get categoryWebFrontend => 'Pengembangan Web: Frontend';
  @override String get categoryWebBackend => 'Pengembangan Web: Backend';
  @override String get categoryMobileAndroid => 'Pengembangan Seluler (Android)';
  @override String get categorySystemPerformance => 'Pemrograman Sistem dan Kinerja Tinggi';
  @override String get categoryDataScienceAI => 'Ilmu Data, Kecerdasan Buatan, dan Otomasi';
  @override String get categoryDatabase => 'Manajemen Basis Data';
  @override String get comingSoon => 'Segera Hadir';
}

// Japonca (JA)
class _L10nJa implements L10n {
  @override String get appTitle => 'プログラミングを学ぶ';
  @override String get coursesTitle => 'コース';
  @override String get pythonDescription => '汎用、データサイエンス、人工知能';
  @override String get javascriptDescription => 'ウェブ開発（フロントエンド/バックエンド）';
  @override String get javaDescription => 'Android、エンタープライズアプリケーション';
  @override String get cDescription => 'システムプログラミング、組み込みシステム';
  @override String get cplusplusDescription => 'ゲーム開発、高性能ソフトウェア';
  @override String get kotlinDescription => '最新のAndroid開発';
  @override String get htmlCssDescription => 'ウェブページの基本構造とスタイル';
  @override String get htmlDescription => 'ウェブページの基本的な構成要素と骨格';
  @override String get cssDescription => 'ウェブページにスタイルと外観を与える技術';
  @override String get sqlDescription => 'データベース管理とクエリ言語';
  @override String get requiresHtmlKnowledge => 'HTMLの知識が必要です';
  @override String get availableSoon => '近日公開';
  @override String get taglineBeginnerFriendly => '初心者向け';
  @override String get taglineLanguageOfTheWeb => 'ウェブの言語';
  @override String get taglineEnterprisePower => 'エンタープライズパワー';
  @override String get taglineHighPerformance => '高性能';
  @override String get taglineSystemLanguage => 'システム言語';
  @override String get taglineModernAndroid => '最新のAndroid';
  @override String get continueButton => '続ける';
  @override String get challengeArenaTitle => 'コードアリーナ';
  @override String get dailyChallengeTitle => '今日のチャレンジ';
  @override String get dailyChallengeCompletedTitle => '今日のチャレンジを完了しました！';
  @override String get dailyChallengeCompletedSubtitle => '素晴らしい！新しい問題のために明日また来てください。';
  @override String get nextChallengeCountdown => '次のチャレンジまでの時間：';
  @override String get miniProjectsTitle => 'ミニプロジェクト';
  @override String get miniProjectsSubtitle => '学んだことを使って、具体的で目に見える成果物を作りましょう！';
  @override String get challengeLoadError => 'チャレンジ問題の読み込みに失敗しました。';
  @override String get unknownQuestionError => '不明な質問タイプです。';
  @override String get pricingInfoLoadError => '価格情報の読み込みに失敗しました。もう一度お試しください。';
  @override String get aiWelcomeMessage => 'こんにちは！あなたのコーディングの旅をお手伝いします。何かトピックはありますか、練習したいですか、それとも私からいくつか質問をしましょうか？';
  @override String get aiGenericError => '申し訳ありません、エラーが発生しました。もう一度お試しください。';
  @override String get aiMessageTooLong => 'メッセージが長すぎます。最大2000文字で入力してください。';
  @override String get aiMessageTooShort => 'もっと具体的な質問をしてください（最低15文字）。';
  @override String get aiAssistantTitle => 'AIアシスタント';
  @override String get getPremium => 'プレミアムに登録';
  @override String remainingUses(int count) => '残りの使用回数: $count';
  @override String nextUse(String time) => '次の使用: $time';
  @override String get typeAMessage => 'メッセージを入力...';
  @override String get clickAiAnalysis => '「AI分析」ボタンをクリックして結果を確認してください。';
  @override String get codeTooLong => '// コードが長すぎます！';
  @override String analysisCodeTooLong(int maxChars) => '分析のために送信されたコードが長すぎます。最大$maxChars文字のコードを送信してください。';
  @override String get aiCompilerTitle => 'AIコンパイラ';
  @override String get compilerTab => 'コンパイラ';
  @override String get outputTab => '出力';
  @override String get writeYourCodeHere => 'ここにコードを書いてください...';
  @override String remainingUsesShort(int count) => '(残り$count回)';
  @override String nextUseShort(String time) => '($time)';
  @override String get outputTitle => '出力:';
  @override String get noOutputYet => '//まだ出力はありません。';
  @override String get aiAnalysisTitle => 'AI分析:';
  @override String get aiAssistantButton => 'AIアシスタント';
  @override String get aiAnalysisButton => 'AI分析';
  @override String get commentsTitle => 'コメント';
  @override String get beTheFirstToComment => '最初のコメントを投稿しよう！';
  @override String get writeYourComment => 'コメントを書く...';
  @override String get createNewPostTooltip => '新しい投稿を作成';
  @override String get communityTitle => 'コミュニティ';
  @override String get feedTab => 'フィード';
  @override String get leaderboardTab => 'リーダーボード';
  @override String errorPrefix(String error) => 'エラー: $error';
  @override String get noPostsYet => 'まだ投稿がありません。\n最初の投稿を作成しましょう！';
  @override String get noDataFound => 'データが見つかりません。';
  // YENİ EKLENEN TOPLULUK METİNLERİ
  @override String get leaderboardTitle => 'リーダーボード';
  @override String yourRank(int rank) => 'あなたのランキング: $rank';
  @override String get tapForFullLeaderboard => '完全なリーダーボードを見るにはタップしてください';
  @override String get createNewPostTitle => '新しい投稿を作成';
  @override String get postContentCannotBeEmpty => '投稿内容は空にできません。';
  @override String get whatAreYouThinking => '何を考えていますか？';
  @override String get postContentHint => 'ここに質問やプロジェクトの説明を書いてください...';
  @override String get codeSnippetOptional => 'コードスニペット（任意）';
  @override String get pasteYourCodeHere => 'ここにコードを貼り付けてください...';
  @override String get learnLabel => '学ぶ';
  @override String get compilerLabel => 'コンパイラ';
  @override String get communityLabel => 'コミュニティ';
  @override String get profileLabel => 'プロフィール';
  @override String get congratulations => 'おめでとうございます！';
  @override String get lessonCompleteSubtitle => 'このレッスンを正常に完了しました。新しいことを学び、また一歩前進しました。';
  @override String get finishAndReturnButton => '終了して戻る';
  @override String get lessonStartsWithQuiz => 'このレッスンは直接質問から始まります。\n準備ができたら「続ける」をクリックしてください！';
  @override String get tapToContinue => 'タップして続行';
  @override String get profileLoadError => 'プロフィールの読み込みに失敗しました。';
  @override String get deletePostTitle => '投稿を削除';
  @override String get deletePostConfirmation => 'この投稿を完全に削除してもよろしいですか？';
  @override String get cancel => 'キャンセル';
  @override String get delete => '削除';
  @override String get postDeletedSuccess => '投稿が正常に削除されました。';
  @override String postDeleteError(String error) => '投稿の削除中にエラーが発生しました: $error';
  @override String accountDeleteError(String error) => 'アカウントの削除中にエラーが発生しました: $error';
  @override String get deleteAccountTitle => 'アカウントを削除してもよろしいですか？';
  @override String get deleteAccountConfirmation => 'この操作は元に戻せません。すべての進捗、XP、データが完全に削除されます。';
  @override String get deleteAccountButton => 'アカウントを削除';
  @override String get settingsTitle => '設定';
  @override String get defaultUsername => 'ユーザー';
  @override String levelAndXp(int level, String xp) => 'Lv $level - $xp XP';
  @override String get followers => 'フォロワー';
  @override String get following => 'フォロー中';
  @override String get myPosts => '私の投稿';
  @override String get postsLoadError => '投稿を読み込めませんでした。';
  @override String get noPostsYetProfile => 'まだ投稿がありません。';
  @override String get freeUser => '無料ユーザー';
  @override String get streak => '連続記録';
  @override String projectFinalCodeTitle(String title) => '$title - 最終コード';
  @override String get projectCompleteTitle => 'おめでとうございます、プロジェクト完了です！';
  @override String get projectCompleteSubtitle => 'すべてのステップを組み合わせた最終的なコードはこちらです：';
  @override String get awesomeReturnButton => '素晴らしい！戻る';
  @override String get completeProjectButton => 'プロジェクトを完了して最終コードを見る';
  @override String questionProgress(int current, int total) => '質問 $current / $total';
  @override String get wrongAnswerTryAgain => '不正解です、もう一度お試しください！';
  @override String get skipButton => 'スキップ';
  @override String get tryAgainButton => '再試行';
  @override String get submitButton => '送信';
  @override String suggestionWelcome(String name) => '素晴らしい、$nameさん！';
  @override String get yourSuggestedLanguageIs => 'あなたに最適な開始言語は次のとおりです：';
  @override String startWithSuggestedLanguage(String language) => 'はい、$languageで始めます';
  @override String get chooseAnotherLanguage => '別の言語を選びたい';
  @override String get pleaseEnterYourName => '名前を入力してください。';
  @override String get pleaseSelectYourKnowledge => '知識レベルを選択してください。';
  @override String get pleaseSelectYourGoal => '目標を選択してください。';
  @override String get buddy => '相棒';
  @override String get whatsYourName => 'こんにちは！ \nお名前は何ですか？';
  @override String get typeNameHere => 'ここに名前を入力';
  @override String get howDoYouRateYourKnowledge => 'あなたのプログラミング知識をどのように評価しますか？';
  @override String get knowledgeLevelNone => '何も知りません';
  @override String get knowledgeLevelBasic => '少し知っています';
  @override String get knowledgeLevelIntermediate => '自分を向上させたい';
  @override String get whatIsYourGoal => 'コードで何をしたいですか？';
  @override String get goalWeb => 'ウェブサイトを構築する';
  @override String get goalMobile => 'モバイルアプリを開発する';
  @override String get goalGame => 'ゲームを作る';
  @override String get goalJustLearning => 'ただ学ぶため';
  @override String get finishButton => '完了';
  @override String get followingStatus => 'フォロー中';
  @override String get followButton => 'フォロー';
  @override String likeCount(int count) => '$count 件の「いいね！」';
  @override String commentCount(int count) => '$count 件のコメント';
  @override String get addCommentButton => 'コメントを追加';
  @override String yearsAgo(int count) => '${count}年前';
  @override String monthsAgo(int count) => '${count}ヶ月前';
  @override String weeksAgo(int count) => '${count}週間前';
  @override String daysAgo(int count) => '${count}日前';
  @override String hoursAgo(int count) => '${count}時間前';
  @override String minutesAgo(int count) => '${count}分前';
  @override String get justNow => 'たった今';
  @override String get pricingLoadError => '価格情報の読み込みに失敗しました。もう一度お試しください。';
  @override String get somethingWentWrong => '問題が発生しました。';
  @override String get premiumBenefit1 => '無制限のレッスンアクセスで制限を解除し、すべてのコンテンツに即座にアクセスできます。';
  @override String get premiumBenefit2 => 'AIアシスタントとAIコンパイラのはるかに高い使用制限をお楽しみください。';
  @override String get premiumBenefit3 => '完了したすべてのレッスンで特別な達成証明書を獲得し、プロフィールに表示します。';
  @override String get monthly => '月額';
  @override String get yearly => '年額';
  @override String get startNow => '今すぐ始める';
  @override String get saveAndStart => '割引価格で始める';
  @override String get paymentDisclaimer => 'お支払いはアプリストアのアカウントに請求されます。現在の期間が終了する少なくとも24時間前にキャンセルされない限り、サブスクリプションは自動的に更新されます。';

  // WELCOME SCREEN YENİ EKLENEN METİNLER
  @override String get welcomeSubtitle => 'コードの世界への最初の一歩を踏み出す準備はできていますか？';
  @override String get continueWithGoogle => 'Googleで続行';
  @override String get continueAsGuest => 'ログインせずに続行';


  @override String get privacyPolicyTitle => 'プライバシーポリシー';
  @override String get privacyPolicyContent => '''
このプライバシーポリシーは、お客様が当社のモバイルアプリケーション「Codein」（以下「本サービス」）をご利用になる際に、ENEM SOFTWARE（以下「当社」）がお客様の情報をどのように収集、使用、共有するかについて説明するものです。
当社が収集する情報
a. お客様が直接提供する情報：
アカウント情報：アカウントを作成する際、ユーザー名を提供し、任意でGoogleアカウントをリンクします。当社は、お客様のユーザーID、ユーザー名、および一意のユーザータグを収集します。
プロフィール情報：お客様の経験値（XP）、レベル、フォロワー数、フォロー数は、お客様のプロフィールの一部として保存されます。
初期アンケートへの回答：初期設定時に、お客様の知識レベルや学習目標に関する質問への回答が収集されます。
コミュニティコンテンツ：お客様が作成した投稿（コンテンツ、コードスニペット、言語選択）、コメント、およびインタラクション（いいね、フォロー）。
AIとのインタラクション：AIアシスタントに送信するチャットメッセージ、およびAIコンパイラに送信するコードスニペット。
b. 自動的に収集される情報：
利用データ：完了したレッスン、クイズの結果、アクセスしたコース、利用時間、AI機能の利用状況（利用回数、最終リセットのタイムスタンプ）など、本サービスとのインタラクションに関する情報を収集します。
デバイス情報：セキュリティおよびサービスの最適化を目的として、デバイス固有の情報（モバイルデバイスID、オペレーティングシステム、IPアドレスなど）を収集する場合があります。
アクティビティログ：ストリーク追跡のための毎日のアクティビティの日付。
最後に使用したコード：AIコンパイラで最後に記述したコードスニペットは、利便性のためにデバイスにローカルに保存されます。
お客様の情報の使用方法
当社は、収集した情報を以下のような様々な目的で使用します。
コア学習機能やコミュニティインタラクションを含む、本サービスの提供、維持、改善のため。
お客様の学習体験をパーソナライズし、関連コンテンツを推奨するため。
お客様のユーザーアカウントを管理し、進捗状況（XP、レベル、完了したレッスン、ストリーク）を追跡するため。
投稿作成、コメント、いいね、フォローなどのコミュニティ機能を有効にし、強化するため。
AI支援（チャットおよびコード分析）を提供し、無料ユーザーの利用制限を管理するため。
本サービスのセキュリティと完全性を確保し、不正行為を防止するため。
法的義務を遵守するため。
お客様の情報の共有方法
当社は、お客様の情報を以下と共有する場合があります。
Supabase：お客様のアカウントデータ、プロフィール情報、コミュニティコンテンツ、AI利用ログのすべてを保存する当社のバックエンドサービスプロバイダー。
Google Gemini API：お客様のチャットメッセージとコードスニペットは、処理と応答生成のためにGoogleのAIサービスに送信されます。
他のユーザー：お客様のユーザー名、ユーザータグ、XP、レベル、フォロワー/フォロー中、および公開コミュニティの投稿/コメントは、アプリ内の他のユーザーに表示されます。
法的要件：法律で義務付けられている場合、または公的機関からの有効な要求に応じて、お客様の情報を開示する場合があります。
事業譲渡：合併、買収、または資産売却の場合、お客様の情報が譲渡されることがあります。
当社は、お客様の個人データを第三者に販売しません。
データセキュリティ
当社は、お客様の情報を不正なアクセス、改ざん、開示、または破壊から保護するために設計された、合理的なセキュリティ対策（例：Supabaseを介したデータ暗号化およびアクセス制御）を実施しています。
データ保持
当社は、本サービスを提供し、当社の法的義務を遵守し、紛争を解決し、当社の契約を執行するために必要な期間、お客様の個人情報を保持します。お客様は、アカウントの削除を要求する権利を有します。
お客様の権利
お客様は、ご自身の個人情報に関して、以下を含む特定の権利を有します。
アクセス：当社が保有するお客様の個人データのコピーを要求する。
訂正：不正確または不完全な個人データの訂正を要求する。
削除：お客様のアカウントおよび関連する個人データの削除を要求する（これはプロフィール画面の設定から開始できます）。
異議：当社の個人データの処理に異議を唱える。
これらの権利のいずれかを行使するには、enemsoft@gmail.comまでご連絡ください。
第三者サービス
本サービスは、SupabaseやGoogle Geminiなどの第三者サービスに依存しています。これらのサービスによるデータの使用は、独自のプライバシーポリシーに準拠します。当社は、これらの第三者サービスのプライバシー慣行について責任を負いません。
本プライバシーポリシーの変更
当社は、プライバシーポリシーを随時更新することがあります。変更があった場合は、このページに新しいプライバシーポリシーを掲載してお知らせします。変更がないか、このプライバシーポリシーを定期的に確認することをお勧めします。
お問い合わせ
このプライバシーポリシーについてご不明な点がございましたら、お問い合わせください。
Eメール：enemsoft@gmail.com
本サービスを継続して利用することにより、お客様はこのプライバシーポリシーを読み、理解したことを認めたものとします。
''';
  @override String get acceptPrivacyPolicy => '同意して続行';
  @override String get declinePrivacyPolicy => '拒否して終了';
  @override String get privacyDeclinedMessage => 'アプリを使用するにはプライバシーポリシーに同意する必要があります。';

  @override
  String get loginForThisFeature => 'この機能を利用するにはログインする必要があります';
  @override
  String get loginForThisFeatureSubtitle => 'コミュニティへの参加、AIアシスタントの利用、プロフィールの閲覧は、アカウントでログインしてください。';

  @override
  String get welcomeTitle => 'こんにちは!';

  @override
  String get loggingIn => 'ログインしています...';

  @override String get featuredPythonTitle => 'Python を始めよう';
  @override String get featuredPythonSubtitle => '人工知能とデータサイエンスで最も人気のある言語で旅を始めましょう。プログラミングへの第一歩はここから始まります。';
  @override String get featuredAiTitle => 'AI アシスタントに相談する';
  @override String get featuredAiSubtitle => 'コーディング中にエラーが発生しましたか、または理解できない概念がありますか？ AI 搭載のアシスタントはクリックするだけです。';
  @override String get chatNow => '今すぐチャット';
  @override String get featuredJavaTitle => 'Java をマスターする';
  @override String get featuredJavaSubtitle => 'エンタープライズレベルのシステムと Android アプリケーションを強化する言語をマスターしましょう。 Java を使用して、強力でスケーラブルなソリューションを今すぐ構築しましょう。';

  @override String get categoryWebFrontend => 'Web 開発：フロントエンド';
  @override String get categoryWebBackend => 'Web 開発：バックエンド';
  @override String get categoryMobileAndroid => 'モバイル開発 (Android)';
  @override String get categorySystemPerformance => 'システムプログラミングとハイパフォーマンス';
  @override String get categoryDataScienceAI => 'データサイエンス、人工知能、自動化';
  @override String get categoryDatabase => 'データベース管理';
  @override String get comingSoon => '近日公開';
}



