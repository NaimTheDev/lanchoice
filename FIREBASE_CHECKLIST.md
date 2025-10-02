# Firebase Console Setup Checklist

## 📋 Complete This Before Testing

Visit: https://console.firebase.google.com/project/lane-choice

---

### ☐ Authentication Setup
- [ ] Navigate to **Build → Authentication**
- [ ] Click **Get Started**
- [ ] Click on **Email/Password** provider
- [ ] Toggle **Enable** to ON
- [ ] Click **Save**

**Expected Result**: Users can sign up and sign in

---

### ☐ Firestore Database Setup
- [ ] Navigate to **Build → Firestore Database**
- [ ] Click **Create Database**
- [ ] Select **Start in test mode**
- [ ] Choose location: **us-central** (or your preference)
- [ ] Click **Enable**

**Expected Result**: Database is created and ready

---

### ☐ Firestore Security Rules
- [ ] In Firestore Database, click **Rules** tab
- [ ] Copy rules from `FIREBASE_SETUP.md` (Production-ready rules section)
- [ ] Paste into the rules editor
- [ ] Click **Publish**

**Expected Result**: Data is secure and users can only modify their own profiles

---

### ☐ Storage Setup (Optional - for later)
- [ ] Navigate to **Build → Storage**
- [ ] Click **Get Started**
- [ ] Select **Start in test mode**
- [ ] Click **Next** and **Done**
- [ ] Go to **Rules** tab
- [ ] Copy storage rules from `FIREBASE_SETUP.md`
- [ ] Click **Publish**

**Expected Result**: Users can upload profile pictures and post images

---

## ✅ Verification Steps

After completing the setup:

1. **Test Sign Up**:
   - Open your app
   - Click "Sign up"
   - Enter: name, email (test@example.com), password (test123)
   - Click "Sign Up"
   - ✅ Should redirect to feed

2. **Verify in Console**:
   - Firebase Console → Authentication → Users
   - ✅ Should see your test user
   - Firebase Console → Firestore Database → Data
   - ✅ Should see `users` collection with your profile

3. **Test Sign In**:
   - Click logout in app
   - Click "Sign in"
   - Enter same credentials
   - ✅ Should redirect to feed

4. **Test Sign Out**:
   - Click logout icon in top right
   - ✅ Should redirect to auth screen

---

## 🎯 Quick Setup (Copy-Paste)

### Firestore Rules for Test Mode
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

### Storage Rules for Test Mode
\`\`\`javascript
rules_version = '2';
service firebase.storage {
  match /b/{bucket}/o {
    match /users/{userId}/{allPaths=**} {
      allow read: if true;
      allow write: if request.auth != null && request.auth.uid == userId;
    }
    match /posts/{postId}/{allPaths=**} {
      allow read: if true;
      allow write: if request.auth != null;
    }
  }
}
\`\`\`

---

## 🔍 Troubleshooting

### Issue: "Email already in use"
**Solution**: Use a different email or delete the user in Firebase Console → Authentication

### Issue: "Permission denied"
**Solution**: Check Firestore Rules are published correctly

### Issue: "Network error"
**Solution**: Check your internet connection and Firebase project is active

### Issue: "Firebase not initialized"
**Solution**: Make sure `firebase_options.dart` exists and `main.dart` initializes Firebase

---

## 📊 Firebase Console Navigation

- **Dashboard**: Overview of your project
- **Authentication**: Manage users and sign-in methods
- **Firestore Database**: NoSQL database for app data
- **Storage**: File storage for images/videos
- **Functions**: Cloud functions (not set up yet)
- **Hosting**: Web app hosting (optional)

---

## ⏱️ Estimated Time
- Authentication: 2 minutes
- Firestore: 2 minutes  
- Rules: 1 minute
- **Total: ~5 minutes**

---

## 🎉 After Setup

Once complete, your app will have:
- ✅ Full user authentication
- ✅ Secure user profiles in Firestore
- ✅ Real-time data synchronization
- ✅ Production-ready security rules
- ✅ Scalable cloud infrastructure

Ready to build amazing features! 🚗💨
