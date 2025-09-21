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

<img width="239" height="461" alt="Screenshot 2025-09-21 152641" src="https://github.com/user-attachments/assets/8826c3dc-6576-481e-9d45-ce450e7e2c5b" /> <img width="329" height="454" alt="Screenshot 2025-09-21 152711" src="https://github.com/user-attachments/assets/97b041ed-1f6f-4b08-a2ba-8886c27ea41a" /> <img width="545" height="342" alt="Screenshot 2025-09-21 152606" src="https://github.com/user-attachments/assets/b0ebdc14-136a-4fe8-9409-e1c2d9f8761f" />
<img width="262" height="460" alt="Screenshot 2025-09-21 152736" src="https://github.com/user-attachments/assets/8f4cdce1-7cfa-4a7c-84df-cc1cb0801213" />
<img width="338" height="456" alt="Screenshot 2025-09-21 152842" src="https://github.com/user-attachments/assets/b6ef6d8b-fd7a-438b-b9c3-83f0ad211259" />
<img width="217" height="461" alt="Screenshot 2025-09-21 152933" src="https://github.com/user-attachments/assets/8f9edd97-7402-4bdd-b563-0fbcf2767d1d" />
