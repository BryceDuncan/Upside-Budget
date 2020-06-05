# Upsdie Budget

Upside Budget
Bryce Duncan, Jason Keith, Frankie Flores, Trevor Tomer
https://github.com/BryceDuncan/Upside-Budget
# Overview
This project’s purpose is to help customers budget by giving them a fair amount of customization with how they spend their money while also encouraging good spending habits among our users. We will give users easy ways to visualize their allocation of disposable income each month.

# Context and Goals
The purpose of this application is to help make lives a little easier with the recent pandemic that has occurred. Hopefully we can help people not have to worry about where their money is going to go and help relieve any stress they have about having to live on a budget during these times. The MVP of our app is to allow users to input data into the app and keep track of their disposable income with a pie chart that breaks down the amount spent and left.
Priority 0 (MVP): User can input expenditures, current money left in their account, and current pie chart in the home screen that displays the breakdown of their budget for the current month.

Priority 1: Get User Data when they register and making profiles
                        -Monthly income/Unemployment check
                        -Percent of Disposable income
                        -Other mandatory payments
                        -Insurance
                       -Rent/Mortgage
                       -Utilities
                       -Gas, water, electricity
                       
Priority 2: Ask users, when signing up, for how they want to spend the remaining budget using sliders to indicate what percent of the remaining budget should be spent on a given category.
   -Food
   -Entertainment
   -Savings
   -Shopping
   
Priority 3: Monthly Budget Breakdown tab, users can see last month’s data and pie chart, as well as what they went over or under in that month.
 
# Frontend Developers:
Jason and Bryce
# Backend Developers:
Trevor and Frankie

# Proposed solution
By utilizing flutter and dart plugins offered by android studios, we will create a cross platform (android/ios) mobile app. We are using flutter in order to keep the same code base for both IOS and android. The front end will have to be done differently for IOS and android to account for the differences in the design, but the backend can be utilized by both. We will use firebase firestore as our database to store user information. Flutter has good support for firebase firestore which is why we have chosen it.
# Resources
https://flutter.dev/docs
https://code.visualstudio.com/
https://codelabs.developers.google.com/?cat=Flutter
https://classroom.udacity.com/courses/ud0352
https://stackoverflow.com/
https://www.youtube.com/watch?v=x0uinJvhNxI&t=9551s

# Timeline
Week 1: 
All members - Team formation and project ideation

Week 2: 
All members - Fleshing out idea and writing this design doc

Week 3: 
Frankie and Trevor: Learn about backend components:
Learn Firebase auth and begin work with it in the app
    Bryce and Jason: Learn about frontend components
Finish most if not all of the mock up screens in Figma

Week 4: 
    Frankie and Trevor: 
Finish Firebase Auth and begin making model for the data in the Firestore database
    Bryce and Jason: 
Begin coding login in screen and register page with sliders for android and IOS

Week 5:
Frankie and Trevor: 
Begin making services to interact with firestore in the program
    Bryce and Jason: 
Continue registration pages with sliders

Week 6:
All Members - Midpoint review. Evaluate the progress you’ve made so far and where you thought you would be. Revisit goals based on this progress and make changes to the team and project if necessary
Frankie and Trevor: 
Begin midware and making the already program screen work with real data in real time
    Bryce and Jason: 
Begin working on the last month analysis screen
Begin working on the homepage and finding libraries to interact with graphical data

Week 7:
Frankie and Trevor:
Continue midware and making the already program screen work with real data in real time
    Bryce and Jason: 
Begin coding task bar to switch between screens within the app

Week 8:
    Frankie and Trevor:
Set up the data to be gather for displaying user information and continue midware
Bryce and Jason:
Begin coding user info screen

Week 9:
Frankie and Trevor:
Finish Midware and allow users to edit data within their account
Bryce and Jason:
Fix visual issues with IOS and Android code and make sure screens are compatible.

Week 10:
All members: Begin putting components together, clean up any existing issues, and prepare project for delivery

Week 11:
All members - Finish up the project and put it on devpost. Put everything on the Devpost and make a video demo

Week 12:
All members - Reflect on how the project went and discuss how your team would like to continue with the project

