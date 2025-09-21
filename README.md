# My Money Mate App
This Flutter app demonstrates a comprehensive dashboard with responsive design that adapts to different screen sizes using adaptive layouts and custom theme management.

## Features
- **Dashboard**: Displays financial data with interactive pie charts showing income distribution, transaction history with expandable lists, and credit card information with quick action buttons.

- **Responsive Layout**: Automatically switches between mobile, tablet, and desktop layouts. Desktop features a three-column layout with drawer, main content, and side panel. Mobile/tablet uses optimized single-column layout.

- **Navigation**: Custom drawer includes user profile information, navigation menu items, and settings panel. Includes options to switch themes and change language preferences.

- **Theme Management**: Complete dark/light mode switching system with custom color schemes. Theme preferences are saved persistently using local storage service.

- **Localization**: Arabic and English language support with RTL (Right-to-Left) layout. Users can switch languages dynamically from the settings panel.

- **Interactive Charts**: Uses fl_chart package for creating pie charts with color-coded segments representing different income categories.

## Architecture and State Management
### Architecture
The app follows a modular architecture pattern with clear separation of concerns:

**Model**: Represents the data structures including TransactionModel for financial transactions, UserInfoModel for profile information, and PieChartSectionDataModel for chart data.

**View**: Represents the UI screens including DashboardView with adaptive layouts, and component widgets like IncomeSection and TransactionHistory.

**Utils**: Contains helper classes including custom theme system, responsive styling utilities, and service classes for storage and settings management.

### State Management
The app uses StatefulWidget for local state management combined with custom services for global state:

**Theme Management**: Custom Themes class with ChangeNotifier for handling theme switching across the entire app.

**Settings Service**: Manages app preferences including language selection and theme persistence.

**Local State**: Individual widgets manage their own state for interactions like expanding transaction lists and dropdown selections.

### Theme System
The app implements a sophisticated theme architecture:

- **Theme Interface**: Abstract contracts defining color and text style requirements
- **Default Theme**: Concrete implementations supporting both light and dark modes  
- **Responsive Styling**: Text styles that scale based on screen dimensions using custom AppStyles class

### UI Design
The UI design follows modern Material Design 3 principles with responsive layouts. The dashboard displays financial data with clean visual hierarchy, interactive charts with smooth animations, and consistent spacing throughout all screen sizes. Custom gesture detectors enhance user interaction while maintaining accessibility standards.


