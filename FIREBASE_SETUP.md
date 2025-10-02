# Firebase Setup Instructions

## Prerequisites
- Firebase project created (already done: `lane-choice`)
- FlutterFire CLI installed (already done)

## Firebase Console Setup

You need to enable the following services in your Firebase Console:

### 1. Authentication
1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Select your project: **lane-choice**
3. Navigate to **Build** → **Authentication**
4. Click **Get Started**
5. Enable **Email/Password** authentication:
   - Click on **Email/Password**
   - Toggle **Enable** to ON
   - Click **Save**

### 2. Firestore Database
1. In Firebase Console, navigate to **Build** → **Firestore Database**
2. Click **Create Database**
3. Select **Start in test mode** (for development)
4. Choose your preferred location
5. Click **Enable**

### 3. Firestore Security Rules (Important!)

Replace the default rules with these production-ready rules:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // Helper functions
    function isSignedIn() {
      return request.auth != null;
    }
    
    function isOwner(userId) {
      return isSignedIn() && request.auth.uid == userId;
    }
    
    // Users collection
    match /users/{userId} {
      // Anyone can read user profiles
      allow read: if true;
      // Only the user can create or update their own profile
      allow create: if isOwner(userId);
      allow update: if isOwner(userId);
      // Only the user can delete their own profile
      allow delete: if isOwner(userId);
    }
    
    // Posts collection
    match /posts/{postId} {
      // Anyone can read posts
      allow read: if true;
      // Only authenticated users can create posts
      allow create: if isSignedIn();
      // Only the post owner can update or delete
      allow update, delete: if isSignedIn() && 
        resource.data.userId == request.auth.uid;
    }
    
    // Clubs collection
    match /clubs/{clubId} {
      // Anyone can read clubs
      allow read: if true;
      // Only authenticated users can create clubs
      allow create: if isSignedIn();
      // Only club creators can update or delete
      allow update, delete: if isSignedIn() && 
        resource.data.createdBy == request.auth.uid;
    }
    
    // Messages collection
    match /messages/{messageId} {
      // Only participants can read messages
      allow read: if isSignedIn() && 
        (request.auth.uid == resource.data.senderId ||
         request.auth.uid == resource.data.receiverId);
      // Only authenticated users can create messages
      allow create: if isSignedIn() && 
        request.auth.uid == request.resource.data.senderId;
      // Only sender can update or delete their messages
      allow update, delete: if isSignedIn() && 
        request.auth.uid == resource.data.senderId;
    }
  }
}
```

### 4. Storage (Optional - for profile images and post images)
1. Navigate to **Build** → **Storage**
2. Click **Get Started**
3. Select **Start in test mode**
4. Click **Next** and **Done**

### 5. Storage Security Rules (Important!)

```javascript
rules_version = '2';
service firebase.storage {
  match /b/{bucket}/o {
    match /users/{userId}/{allPaths=**} {
      // Anyone can read user uploads
      allow read: if true;
      // Only the user can upload to their own folder
      allow write: if request.auth != null && request.auth.uid == userId;
    }
    
    match /posts/{postId}/{allPaths=**} {
      // Anyone can read post images
      allow read: if true;
      // Only authenticated users can upload
      allow write: if request.auth != null;
    }
  }
}
```

## Running the App

1. Make sure Firebase is configured:
   ```bash
   flutter pub get
   ```

2. Run the app:
   ```bash
   flutter run
   ```

## Testing Authentication

### Sign Up Flow
1. Launch the app
2. Click "Sign up" 
3. Enter:
   - Name: Test User
   - Email: test@example.com
   - Password: test123
4. Click "Sign Up"
5. You should be redirected to the feed

### Sign In Flow
1. After signing out, click "Sign in"
2. Enter the same credentials
3. Click "Sign In"
4. You should be redirected to the feed

### Sign Out
- Click the logout icon in the app bar

## Firestore Data Structure

### Users Collection
```
users/
  {userId}/
    - id: string
    - email: string
    - displayName: string
    - profileImageUrl: string?
    - bio: string
    - cars: array
    - createdAt: timestamp
```

### Future Collections (to be implemented)
- `posts/` - User posts and car content
- `clubs/` - Car clubs and communities
- `messages/` - Private messages
- `events/` - Car events and meets

## Troubleshooting

### Firebase Not Initialized
- Make sure `firebase_options.dart` exists in `lib/`
- Run `flutterfire configure` again if needed

### Authentication Errors
- Check that Email/Password is enabled in Firebase Console
- Verify your network connection
- Check Firebase Console → Authentication → Users to see if accounts are being created

### Firestore Permission Errors
- Verify security rules are properly set
- Check that you're signed in before accessing protected data
- Review Firestore logs in Firebase Console

## Next Steps

1. **Enable additional auth methods** (Google Sign-In, Apple Sign-In)
2. **Implement Firestore collections** for posts, clubs, events
3. **Add Firebase Storage** for image uploads
4. **Set up Cloud Functions** for AI post generation
5. **Configure Firebase Analytics** for user insights
6. **Add push notifications** using Firebase Cloud Messaging

## Production Checklist

Before going to production:
- [ ] Review and tighten Firestore security rules
- [ ] Review and tighten Storage security rules
- [ ] Enable Firebase App Check
- [ ] Set up proper error logging (Crashlytics)
- [ ] Configure Firebase Analytics
- [ ] Set up rate limiting for API calls
- [ ] Review authentication security settings
- [ ] Test all user flows thoroughly
