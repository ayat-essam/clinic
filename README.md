# 🏥 Clinic App

A modern **Flutter** mobile application for managing medical appointments, built with a **clean architecture** using **BLoC state management**.  
The app provides a seamless experience for patients to register, log in, browse doctors, and book appointments—all with a clean UI and smooth performance.

---

## 🚀 Features

### 🧭 General
- **Onboarding Screens** – Introduces users to the app and its main features.
- **Authentication System** – Secure login and signup with validation.
- **BLoC State Management** – Ensures clean, reactive, and scalable code.
- **Responsive UI** – Works perfectly across Android and iOS devices.

### 👩‍⚕️ Core App Features
- **View Specialties** – Browse different medical departments and specialties.
- **Doctor Profiles** – View doctor details, ratings, and availability.
- **Book Appointments** – Schedule visits easily with confirmation.
- **Appointment History** – Review past and upcoming appointments.
- **Profile Management** – Edit user details and view account info.
- **Dark / Light Mode** – Built-in theme support.

---

## 🧱 Architecture

The app follows the **Clean Architecture** pattern with **BLoC (Business Logic Component)** for predictable state management and clear separation of concerns.


---

## 🧩 Packages Used

| Package | Description |
|----------|-------------|
| **flutter_bloc** | For BLoC state management |
| **equatable** | Simplifies comparison in BLoC states |
| **shared_preferences** | Store user login and onboarding data |
| **dio** | Handles API calls efficiently |
| **cached_network_image** | Caches doctor images for faster load |
| **flutter_svg** | For SVG assets in the onboarding screens |
| **google_fonts** | Custom typography |
| **intl** | Date formatting for appointments |

---

## 🔐 Authentication Flow

1. **Onboarding** → Shows app intro (only first launch).  
2. **Login / Register** → User authentication via API.  
3. **Home Screen** → Displays available doctors & specialties.  
4. **Book Appointment** → Confirm date/time & save to server.  
5. **Profile** → View or edit user info, log out securely.

---

## 🧠 BLoC Overview

- **AuthBloc** → Manages login, signup, and logout.
- **OnboardingCubit** → Handles onboarding completion.
- **DoctorsBloc** → Fetches doctors and specialties.
- **AppointmentBloc** → Manages booking and history.
- **ThemeCubit** → Toggles between light and dark mode.

---

## 🖼️ UI Preview

*(Add screenshots of onboarding, login, home, and booking screens here)*  
Example:
