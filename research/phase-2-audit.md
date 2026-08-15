# Phase 2 — Existing Product Audit

## Project

**Product:** Shree Gurupeeth / Dindori Pranit Shri Swami Samarth Seva Marg

**Existing Platform:** Android

**Target Platform:** Android + iOS

**Target Technology:** Flutter

**Development Environment:** MacBook Pro M5 + Kiro

---

# 1. Research Sources

This audit is based on:

1. Existing Android application walkthrough recording.
2. Screenshots captured from the existing Android application.
3. Existing application APK analysis.
4. Google Play Store information for the existing application.
5. Existing application assets and structured data discovered from the APK.

This document describes the existing product as observed during research. Proposed improvements are clearly identified as recommendations.

---

# 2. Existing Product Overview

The existing application is not only a devotional-content application.

It combines several product domains:

- Spiritual content
- Nitya Seva
- Seva management
- User Seva records
- Organizational information
- Department directory
- Educational information
- Media/video content
- Products
- Daily information
- Panchang/calendar information
- Initiatives and activities
- Contact information

Therefore, the new application should be treated as a complete digital platform rather than a simple collection of mobile screens.

---

# 3. Onboarding

## Existing Flow

The observed onboarding flow includes:

1. Welcome/introduction screen
2. Country selection
3. Language selection
4. Email registration
5. Verification code
6. Loading
7. Home

## Observations

The welcome screen introduces:

- Shri Swami Samarth Seva Marg
- Shri Gurupeeth
- Nitya Seva
- Ann-Chandi Seva
- Social initiatives
- Dattadham
- Other organizational activities

## Recommendation

Keep the introduction concept but redesign the onboarding to be faster and less intrusive.

---

# 4. Country Selection

The existing application provides a country-selection screen containing a large list of countries.

## Observed Problem

The user appears to need to navigate through a large list.

## Recommendation

The new application should provide:

- Country search
- Country flag
- Country name
- Country calling code
- Recently selected country
- Fast selection

---

# 5. Language Selection

The existing application supports multiple languages.

Observed examples include:

- English
- Marathi
- Hindi
- Gujarati

## Recommendation

Internationalization should be part of the architecture from the beginning.

The application should not hardcode Marathi or English text directly inside UI components.

---

# 6. Authentication

The existing application uses an email-based registration and verification flow.

Observed sequence:

Email
→ Verification code
→ Verification
→ Application loading
→ Home

## Recommendation

Authentication requirements must be verified with the organization before implementation.

The new application should avoid mandatory registration for features that do not require an account.

Potential account-dependent features may include:

- Personal Seva
- Seva history
- Saved content
- Synchronization
- Personalized settings

---

# 7. Loading Experience

## Existing Behavior

The existing application frequently displays a blocking loading dialog.

Observed pattern:

User action
→ Screen darkens
→ Loading dialog
→ Wait
→ Content appears

## Problem

Blocking loading creates a perception of slow performance and prevents the user from interacting with the application.

## Recommendation

Replace blocking loading dialogs with:

- Cached content
- Skeleton loading
- Progressive loading
- Background refresh
- Retry states
- Error states

Target behavior:

Open screen
→ Show cached content immediately
→ Fetch latest data
→ Update content in background

---

# 8. Home Screen

The Home screen contains:

- Header
- Navigation drawer
- Notification icon
- Promotional banner/carousel
- Panchang information
- Daily information
- My Seva
- Seva registration
- 18 Seva Marg departments
- Video content
- Dindori-related content

---

# 9. Panchang / Daily Information

Observed information includes:

- Panchang
- Tithi
- Var
- Nakshatra
- Rahukaal
- Shubharambh
- Dinvishesh

## Recommendation

This information should be dynamically generated or provided through a backend/service.

It should not be permanently hardcoded into the Flutter application.

Potential factors include:

- Date
- Location
- Timezone
- Language

---

# 10. My Seva

The Home screen contains a My Seva section.

Observed functionality includes:

- Seva records
- Option to register a Seva
- Personal Seva information

This indicates that the application contains user-specific data.

## Recommendation

My Seva should be designed as a proper data-backed feature.

Potential model:

User
→ Seva Registration
→ Database
→ Seva History

---

# 11. Ann-Chandi Seva

The application contains an Ann-Chandi Seva registration flow.

Observed categories include:

- Personal
- Family
- Community

The user can enter/register Seva-related information.

## Recommendation

This should be implemented as a structured backend feature rather than a static form.

The exact business rules must be confirmed with the organization.

---

# 12. Validation

The existing application displays validation when required Seva information has not been entered.

## Recommendation

The new application should prefer inline validation where possible.

Example:

Instead of:

Submit
→ Modal
→ Error

Use:

Required field
→ Inline validation
→ Clear explanation

---

# 13. 18 Seva Marg Departments

The Home screen contains a section representing 18 Seva Marg departments.

Observed examples include:

- Deshvidesh
- Swamiseva Ank
- Administrative
- Health and Ayurveda
- Environment
- Vastu Shastra
- Self Employment
- Legal
- Indian Culture
- Veda/Yajna Research
- Child Culture
- Training
- IT
- Animal/Cow Service

The exact official list should be verified before final implementation.

---

# 14. Department Details

The existing application provides detailed pages for departments.

Observed content can include:

- Banner/image
- Description
- Objectives
- Activities
- Contact information
- Phone numbers
- Email

## Recommendation

Departments should be data-driven.

Example conceptual structure:

Department
- ID
- Name
- Icon
- Image
- Description
- Objectives
- Activities
- Contact
- Phone
- Email
- Links

---

# 15. Video Content

The application contains a New Videos section.

Observed content includes videos related to:

- Ayurveda
- Health
- Eye care
- Food/cooking
- Spiritual information
- Dindori Pranit Seva Marg

## Existing Problem

Some video cards appeared to have missing/blank content during the walkthrough.

## Recommendation

Each media item should support:

- Thumbnail
- Title
- Duration
- Source
- Loading state
- Error state
- Fallback image

---

# 16. Nitya Seva

The application contains a dedicated Nitya Seva section.

Observed categories include:

- Nitya Seva
- Aarti Sangrah
- Shri Swami Charitra
- Mantra Jap
- Saptavar
- Ann-Chandi
- Margdarshika
- My Seva

## Recommendation

Nitya Seva should be treated as one of the primary product domains.

Potential future organization:

- Today's Seva
- Aarti
- Stotra
- Mantra
- Charitra
- Mantra Jap
- Saptavar
- Ann-Chandi
- Margdarshika
- My Seva
- Favorites
- Downloaded content

---

# 17. Mantra Jap

The existing application contains a Mantra Jap feature.

## Recommendation

The basic counter should work offline.

Expected behavior:

Open Mantra Jap
→ Select mantra
→ Start counting
→ Count locally
→ Close application
→ Reopen
→ Previous count remains

Synchronization can occur later if required.

---

# 18. Upक्रम

The application contains an Upक्रम section.

Observed initiatives include:

- Ayurvedic Hospital
- Goseva
- Shri Prasadalay
- Shri Gurupeeth
- Shri Jankalyan
- Shri Dattadham

## Recommendation

Upक्रम should be organized into logical categories rather than presenting an unstructured list of cards.

---

# 19. Navigation Drawer

The existing navigation drawer contains many functions.

Observed categories include:

- Home
- Shri Swami Samarth Seva Marg
- Shri Gurupeeth
- Margdarshika
- Ann-Chandi Seva
- YouTube
- Aarti Sangrah
- Nitya Seva
- Stotra
- Mantra
- Shri Swami Charitra Saramrut
- Mantra Jap
- Saptavar
- Contact
- Logout

## Problem

The drawer carries too much of the application's information architecture.

## Recommendation

The new application should reduce dependence on a large drawer.

Primary features should be available through clear primary navigation.

Secondary features can be placed under More/Settings.

---

# 20. Existing Visual Identity

Observed visual characteristics include:

- Deep purple primary color
- Red/saffron accents
- White/light background
- Rounded cards
- Purple card footers
- Devotional imagery
- Light devotional/geometric background motifs
- Marathi/Devanagari typography

## Recommendation

The new application should preserve the recognizable brand identity while modernizing:

- Typography
- Spacing
- Card design
- Navigation
- Icons
- Animations
- Loading states
- Accessibility

---

# 21. Features to Keep

The following existing capabilities should be considered core:

- Nitya Seva
- Aarti Sangrah
- Stotra
- Mantra
- Shri Swami Charitra
- Mantra Jap
- Saptavar
- Margdarshika
- My Seva
- Ann-Chandi Seva
- 18 Departments
- Department information
- Gurupeeth information
- Seva Marg information
- Upक्रम
- Panchang
- Daily information
- Video content
- YouTube-related content
- Products
- Contact
- About

---

# 22. Features to Redesign

- Splash screen
- Welcome/onboarding
- Country selection
- Language selection
- Authentication
- Home
- Bottom navigation
- Navigation drawer
- Nitya Seva
- Upक्रम
- Products
- Department pages
- Video pages
- My Seva
- Ann-Chandi Seva

---

# 23. Features to Replace Technically

The following behaviors should not be reproduced:

- Blocking full-screen loading dialogs
- Slow sequential content loading
- Blank media cards
- Hardcoded dynamic content
- Excessive navigation through the drawer

---

# 24. New Features Recommended

These are recommendations for the new product and are not necessarily existing features.

## High Priority

- Offline content
- Search
- Favorites/bookmarks
- Downloaded content
- Notification center
- Better language switching
- Accessibility controls
- Font-size controls
- Error recovery
- Content sharing
- Deep links

## Medium Priority

- Personalized home
- Seva history
- Continue reading
- Recently viewed
- Recently played

## Later

- Personalized recommendations
- Advanced Seva analytics
- Community functionality
- Donations/payments if officially required

---

# 25. Major UX Problems

## P0 — Performance

Blocking loading and slow responses.

## P0 — Content reliability

Some media cards may fail to load.

## P1 — Navigation complexity

Large drawer containing many features.

## P1 — Authentication friction

Account creation appears before the main experience.

## P1 — Content architecture

Large content areas should become data-driven.

## P1 — Offline limitations

Important spiritual content and mantra functionality should support offline operation.

## P2 — Visual modernization

The application should receive a modern mobile UI while preserving its identity.

## P2 — Accessibility

The application should support older users and users reading Devanagari content.

---

# 26. New Product Architecture Direction

The new application should follow:

Cache-first + network synchronization.

Conceptually:

Flutter UI
→ Repository
→ Local Database/Cache
→ API
→ Backend
→ Database/CMS

The application should not rely on:

Flutter screen
→ HTTP request
→ Blocking spinner
→ Content

---

# 27. Key Product Principle

The new application should be:

**Fast, reliable, content-driven, offline-capable, accessible, multilingual, and cross-platform.**

The goal is not simply to rewrite the old Android application in Flutter.

The goal is to re-engineer the product while preserving its important capabilities.

---

# 28. Phase 2 Classification

| Feature | Decision |
|---|---|
| Splash | Redesign |
| Welcome | Redesign |
| Country selection | Rebuild UX |
| Language selection | Keep + redesign |
| Authentication | Research before final decision |
| Verification | Research + rebuild |
| Home | Rebuild |
| Panchang | Keep + backend redesign |
| My Seva | Rebuild |
| Ann-Chandi Seva | Rebuild |
| 18 Departments | Keep + redesign |
| Department content | Keep + CMS architecture |
| Videos | Keep + rebuild media layer |
| Nitya Seva | Keep + redesign |
| Aarti | Keep |
| Charitra | Keep |
| Mantra Jap | Keep + offline-first |
| Saptavar | Keep |
| Margdarshika | Keep |
| Upक्रम | Keep + redesign |
| Products | Research + rebuild |
| About | Keep + redesign |
| Contact | Keep + redesign |
| Drawer | Major redesign |
| Loading dialogs | Replace |
| Bottom navigation | Keep concept + redesign |
| Purple branding | Keep |
| Devotional visual identity | Keep + refine |

---

# 29. Phase 2 Status

## Completed

- Existing app walkthrough
- Screen inventory
- Navigation audit
- Feature discovery
- Authentication flow discovery
- Seva flow discovery
- Department discovery
- Nitya Seva discovery
- Upक्रम discovery
- Video/content discovery
- Loading/performance observations
- UX problem identification
- Feature classification
- Initial architecture implications

## Still Requires Verification

- Exact backend/API behavior
- Existing database structure
- Authentication requirements
- Existing admin/CMS
- Content ownership/licensing
- Exact Products functionality
- Notification infrastructure
- Exact offline requirements
- Official business rules for Seva registration
- Privacy/data retention requirements
- Official organizational requirements

These items must be confirmed before final requirements and architecture decisions.

---

# 30. Next Phase

After this audit is stored in the repository, the next phase is:

**PHASE 3 — REQUIREMENTS / PRD**

The PRD will define:

- Product vision
- Target users
- Personas
- Goals
- Non-goals
- Functional requirements
- Non-functional requirements
- Authentication requirements
- Offline requirements
- Localization
- Content requirements
- Seva requirements
- Notifications
- Accessibility
- Security
- Privacy
- Admin/CMS
- Analytics
- Acceptance criteria
- MVP
- V1.1
- V2
- Product KPIs

Database and detailed Flutter architecture will be designed after the requirements are established.