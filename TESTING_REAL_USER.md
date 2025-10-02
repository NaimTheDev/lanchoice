# Testing Real User Integration

## Quick Test Steps

### ✅ Step 1: Enable Firebase Services
Make sure you've completed the Firebase setup:
- [ ] Email/Password authentication enabled
- [ ] Firestore database created
- [ ] Security rules published

See `FIREBASE_CHECKLIST.md` for details.

---

### ✅ Step 2: Sign Up with Your Name

1. Open the app
2. Click **"Sign up"**
3. Enter:
   - **Name**: Your actual name (e.g., "Sarah Johnson")
   - **Email**: test@example.com
   - **Password**: test123
4. Click **"Sign Up"**

---

### ✅ Step 3: Verify Your Name Shows

After signing up, you should see:

**In the Feed Screen:**
```
What's on your mind, [Your First Name]?
```

For example, if you signed up as "Sarah Johnson", you'll see:
```
What's on your mind, Sarah?
```

**NOT** the demo user "Alex Ryder"!

---

### ✅ Step 4: Check Firebase Console

1. Go to Firebase Console → Firestore Database
2. Open the `users` collection
3. You should see a document with:
   ```json
   {
     "id": "abc123...",
     "email": "test@example.com",
     "displayName": "Sarah Johnson",
     "bio": "",
     "cars": [],
     "createdAt": "2025-10-02T..."
   }
   ```

---

### ✅ Step 5: Test Persistence

1. Click the **logout** button (top right)
2. Sign in again with the same credentials
3. Your name should **still appear** correctly

This proves it's loading from Firestore, not memory!

---

## What You Should See

### ✅ Success Indicators

1. **Feed prompt uses your name**: "What's on your mind, [YourName]?"
2. **Avatar shows your initials**: "SJ" for Sarah Johnson
3. **Name persists after logout/login**
4. **Firestore has your user document**

### ❌ Something's Wrong If...

1. **Still shows "Alex Ryder"**
   - Firestore profile might not be loading
   - Check browser console for errors
   - Verify Firebase is initialized

2. **Name doesn't persist**
   - User profile might not be saved to Firestore
   - Check Firestore security rules
   - Verify user document exists in Firebase Console

3. **App crashes on sign up**
   - Check that Firestore database is created
   - Verify security rules allow writes
   - Check browser console for specific error

---

## Browser Console

Open your browser console (F12) to see:
- Firebase initialization logs
- Any authentication errors
- Firestore read/write operations

---

## Test with Multiple Users

Try creating multiple accounts:

1. **Account 1**:
   - Name: John Smith
   - Email: john@example.com
   - Expected: "What's on your mind, John?"

2. **Account 2**:
   - Name: Emma Wilson
   - Email: emma@example.com
   - Expected: "What's on your mind, Emma?"

3. **Sign in with Account 1 again**:
   - Expected: Still shows "John" (not Emma)

---

## Troubleshooting

### Issue: Shows demo user "Alex Ryder"
**Solution**: 
- The app falls back to demo user if Firestore profile isn't loaded
- Wait a moment after sign up
- Refresh the page
- Check browser console for errors

### Issue: "Permission denied" error
**Solution**:
- Update Firestore security rules (see `FIREBASE_CHECKLIST.md`)
- Make sure the rules allow authenticated users to read/write their profiles

### Issue: Name doesn't update
**Solution**:
- Check that you're watching `currentUserProvider` in the UI
- Verify the StreamProvider is active
- Try hot reload (press 'r' in terminal)

---

## Expected Firebase Console State

After successful test:

### Authentication → Users
```
test@example.com    | User UID: abc123...
```

### Firestore Database → users collection
```
Document ID: abc123...
Fields:
  - id: "abc123..."
  - email: "test@example.com"
  - displayName: "Sarah Johnson"
  - bio: ""
  - cars: []
  - createdAt: October 2, 2025 at 12:00:00 PM UTC
```

---

## Success! 🎉

If you see your real name in the feed prompt, congratulations! You've successfully integrated:
- ✅ Firebase Authentication
- ✅ Firestore user profiles
- ✅ Real-time user data
- ✅ Riverpod state management

Now you can build more features with real user data!
