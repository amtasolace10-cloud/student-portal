#  Campus Connect - Student Portal App

Yeh ek Flutter based mobile application hai jo university / college students ke liye ek centralized digital portal provide karti hai. Is app se students apni academics, campus events, announcements, aur study materials ko ek hi jagah se manage kar sakte hain.


###  Main Features

1.  **Secure Authentication:** University Email se Login / Signup
2.  **Smart Dashboard:** Student ka semester, department aur quick access cards
3.  **Announcements:** University ki taraf se latest notices (Exams, Library timings)
4.  **Campus Events:** Annual events, Hackathons aur unme registration
5.  **Lost & Found Portal:** Khoi hui cheezon ko report aur search karna
6.  **Study Resources:** Lecture notes, Lab manuals, PDFs download karna
7.  **Student Profile:** Academic aur personal details ka clean view
8.  **Help & Support:** FAQs aur support



###  Tech Stack

* **Framework:** Flutter (Dart)
* **State Management:** StatefulWidget / setState
* **UI:** Material Design 3, Google Fonts (Roboto), Card, GridView, ListView
* **Navigation:** BottomNavigationBar & Navigator



###  Project Structure & Code Logic

`lib` folder ke andar code is tarah organize hai:


#### Har File ki Logic:

**1. `main.dart`**
App ka starting point hai. `runApp(CampusConnectApp)` yahan se hota hai. Yahan ThemeData me Primary Color `0xFF1E3A8A` (Dark Blue) aur font family set hai. `home: LoginScreen()` se app login se start hoti hai.

**2. `login_screen.dart`**
StatefulWidget hai. User Email/Password enter karta hai. Login button par `Navigator.pushReplacement(context, MainNavigation)` hota hai taake user back press karke wapas login par na aaye.

**3. `signup_screen.dart`**
Naye students ke liye form hai (Full Name, Email, Reg ID e.g. BCS-001, Password). Register par `Navigator.pop(context)` se wapas login par bhej deta hai.

**4. `main_navigation.dart`**
Ye app ka main container hai. Isme 4 tabs hain BottomNavigationBar me:
Dashboard, Events, Lost & Found, Profile. `currentIndex` se screen switch hoti hai.

**5. `dashboard_screen.dart`**
Welcome banner + Student info + neeche GridView me 4 Cards hain: Announcements, Study Resources, Campus Events, Help & Support. `onTap` se relevant screen par navigation.

**6. `announcements_screen.dart`**
University notices ko `ListView.builder` aur `Card` widget se show karta hai. Data static List se aata hai.

**7. `events_screen.dart`**
Campus events ki list. Har event card me "Register Now" button hai jo `ScaffoldMessenger.of(context).showSnackBar()` se confirmation deta hai.

**8. `lost_found_screen.dart`**
Khoi/mili cheezon ki list. `FloatingActionButton (+)` se naya item add karne ka dialog khulta hai.

**9. `study_resources_screen.dart`**
Notes/PDFs ki list. Har item par download icon hai. Click par SnackBar: "Download Started".

**10. `profile_screen.dart`**
Student ki details: Name, Reg ID, Semester, Department, Email. Clean `ListTile` layout me.

**11. `support_screen.dart`**
FAQs ke liye `ExpansionTile` use hua hai taake sawal par click karke jawab khule.



###  Kaise Run Karein? 
**1. How to run:**
flutter run -d edge

**1.Future Updates:**

* Firebase Authentication & Firestore Database
* Real PDF download & Upload feature
* Push Notifications for Announcements
* Admin Panel for Teachers

