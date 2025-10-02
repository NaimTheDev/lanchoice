# Quick Start Guide - Firebase Setup

## 🚀 5-Minute Firebase Setup

Your app is now integrated with Firebase! Follow these steps to enable authentication and database:

### Step 1: Open Firebase Console
Visit: https://console.firebase.google.com/project/lane-choice

### Step 2: Enable Authentication (2 minutes)
1. Click **"Authentication"** in the left sidebar
2. Click **"Get Started"** button
3. Click **"Email/Password"** 
4. Toggle **"Enable"** to ON
5. Click **"Save"**

✅ Done! Users can now sign up and sign in.

### Step 3: Create Firestore Database (2 minutes)
1. Click **"Firestore Database"** in the left sidebar
2. Click **"Create database"** button
3. Select **"Start in test mode"** (for development)
4. Choose your preferred location (e.g., us-central)
5. Click **"Enable"**

✅ Done! User profiles will now be saved.

### Step 4: Update Firestore Rules (1 minute)
After creating the database:
1. Click on the **"Rules"** tab
2. Replace the content with:

\`\`\`javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /users/{userId} {
      allow read: if true;
      allow write: if request.auth != null && request.auth.uid == userId;
    }
    
    match /posts/{postId} {
      allow read: if true;
      allow write: if request.auth != null;
    }
  }
}
\`\`\`

3. Click **"Publish"**

✅ Done! Your data is now secure.

---

## 🎯 Test Your App

1. Run the app:
   \`\`\`bash
   flutter run -d chrome
   \`\`\`

2. Create an account:
   - Enter any name
   - Use a valid email format (e.g., test@example.com)
   - Password must be 6+ characters

3. Verify in Firebase Console:
   - Go to **Authentication → Users**
   - You should see your new user
   - Go to **Firestore Database**
   - You should see a `users` collection with your profile

---

## ✅ What's Working Now

- ✅ User registration (sign up)
- ✅ User authentication (sign in)
- ✅ User profiles stored in Firestore
- ✅ Sign out functionality
- ✅ Auto redirect based on auth state
- ✅ Error handling and loading states

---

## 📝 Common Issues

### "Firebase project not found"
- Make sure you've selected the correct project in Firebase Console
- Run `flutterfire configure` again if needed

### "User creation failed"
- Ensure Email/Password authentication is enabled
- Check that your password is 6+ characters
- Verify network connection

### "Permission denied" in Firestore
- Make sure you've updated the Firestore security rules
- Ensure you're signed in before accessing data

---

## 🎨 What's Next?

Now that authentication and Firestore are working, you can:

1. **Create Posts** - Users can share car photos and stories
2. **Build Feed** - Display posts from all users in real-time
3. **Add Profiles** - Show user profile with their cars
4. **Create Clubs** - Car enthusiast communities
5. **Add Messaging** - Direct messaging between users

See `FIREBASE_INTEGRATION_SUMMARY.md` for detailed architecture information.

---

## 🆘 Need Help?

Check the detailed guides:
- `FIREBASE_SETUP.md` - Complete setup instructions
- `FIREBASE_INTEGRATION_SUMMARY.md` - Architecture overview
- Firebase Console logs for error messages
