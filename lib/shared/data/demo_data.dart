import '../models/user.dart';
import '../models/post.dart';
import '../models/comment.dart';
import '../models/club.dart';
import '../models/event.dart';
import '../../core/constants/app_constants.dart';

class DemoData {
  static final List<User> users = [
    User(
      id: 'u1',
      name: 'Alex Ryder',
      handle: 'ryderauto',
      email: 'alex@example.com',
      avatarUrl: '${AppConstants.placeholderAvatarUrl}?text=AR',
      coverUrl: '${AppConstants.placeholderBannerUrl}?text=Cover',
      bio:
          'Just a guy and his Mustang. Living one quarter-mile at a time. Chasing sunsets and burnt rubber.',
      location: 'Los Angeles, CA',
      instagramUrl: 'https://instagram.com/ryderauto',
      isVerified: true,
      raceTypes: ['1/4 mile', 'Roll Race'],
      raceCarName: '1966 Ford Mustang',
      raceCardDescription:
          'Classic pony car with a modern heart. Ready to run.',
      followerCount: 1200,
      followingCount: 345,
      garagePhotos: [
        '${AppConstants.placeholderImageUrl}?text=Garage1',
        '${AppConstants.placeholderImageUrl}?text=Garage2',
        '${AppConstants.placeholderImageUrl}?text=Garage3',
      ],
    ),
    User(
      id: 'u2',
      name: 'Mia Chen',
      handle: 'miadrifts',
      email: 'mia@example.com',
      avatarUrl: '${AppConstants.placeholderAvatarUrl}?text=MC',
      coverUrl: '${AppConstants.placeholderBannerUrl}?text=JDM',
      bio:
          'JDM queen. Drifting is my therapy. Building my dream S15 one part at a time.',
      location: 'Tokyo, JP',
      isVerified: true,
      raceTypes: ['Drift'],
      raceCarName: 'Nissan Silvia S15',
      raceCardDescription:
          'Lover of all things JDM. Catch me at the track going sideways.',
      followerCount: 25000,
      followingCount: 120,
    ),
    User(
      id: 'u3',
      name: 'Ben Carter',
      handle: 'euroben',
      email: 'ben@example.com',
      avatarUrl: '${AppConstants.placeholderAvatarUrl}?text=BC',
      bio:
          'German engineering enthusiast. All about clean builds and performance.',
      location: 'Munich, DE',
      raceCarName: 'BMW M3 E92',
      followerCount: 5600,
      followingCount: 800,
    ),
    User(
      id: 'u4',
      name: 'Chloe Davis',
      handle: 'offroadchloe',
      email: 'chloe@example.com',
      avatarUrl: '${AppConstants.placeholderAvatarUrl}?text=CD',
      bio: 'The trail is my happy place. If it has dirt, I\'m there. ⛰️',
      location: 'Moab, UT',
      raceCarName: 'Jeep Wrangler Rubicon',
      followerCount: 8900,
      followingCount: 210,
    ),
    User(
      id: 'u5',
      name: 'Marcus Holloway',
      handle: 'tunerlife',
      email: 'marcus@example.com',
      avatarUrl: '${AppConstants.placeholderAvatarUrl}?text=MH',
      bio: 'VTEC kicked in, yo. Building and tuning with my crew.',
      location: 'San Francisco, CA',
      raceCarName: 'Honda Civic Type R',
      followerCount: 15200,
      followingCount: 450,
    ),
    User(
      id: 'u6',
      name: 'Sophia Rossi',
      handle: 'vintagevibes',
      email: 'sophia@example.com',
      avatarUrl: '${AppConstants.placeholderAvatarUrl}?text=SR',
      bio: 'Curator of classic automotive elegance. Air-cooled forever.',
      location: 'Milan, IT',
      raceCarName: 'Porsche 911 (964)',
      followerCount: 42000,
      followingCount: 99,
      isVerified: true,
    ),
    User(
      id: 'u7',
      name: 'Leo Garcia',
      handle: 'lowriderleo',
      email: 'leo@example.com',
      avatarUrl: '${AppConstants.placeholderAvatarUrl}?text=LG',
      bio: 'Low and slow, that is the tempo. Hydraulics and custom paint.',
      location: 'East LA, CA',
      raceCarName: '1964 Chevy Impala',
      followerCount: 7800,
      followingCount: 300,
    ),
    User(
      id: 'u8',
      name: 'Isabelle Dubois',
      handle: 'rallybelle',
      email: 'isabelle@example.com',
      avatarUrl: '${AppConstants.placeholderAvatarUrl}?text=ID',
      bio:
          'Life is too short to stay on the pavement. Co-driver and aspiring rally champion.',
      location: 'Monaco',
      raceCarName: 'Subaru WRX STI',
      followerCount: 19500,
      followingCount: 600,
    ),
    User(
      id: 'u9',
      name: 'Kenji Tanaka',
      handle: 'midnightkenji',
      email: 'kenji@example.com',
      avatarUrl: '${AppConstants.placeholderAvatarUrl}?text=KT',
      bio: 'Wankel enthusiast. Exploring the Wangan at night.',
      location: 'Yokohama, JP',
      raceCarName: 'Mazda RX-7 FD',
      followerCount: 33000,
      followingCount: 50,
      isVerified: true,
    ),
    User(
      id: 'u10',
      name: 'Fatima Al-Jamil',
      handle: 'desertdriver',
      email: 'fatima@example.com',
      avatarUrl: '${AppConstants.placeholderAvatarUrl}?text=FA',
      bio: 'Supercar adventures in the desert. Speed and luxury.',
      location: 'Dubai, UAE',
      raceCarName: 'Lamborghini Urus',
      followerCount: 55000,
      followingCount: 15,
      isVerified: true,
    ),
  ];

  static List<Comment> _generateComments() {
    return [
      Comment(
        id: 'c1',
        author: users[1], // Mia
        text: 'Looks amazing! The scenery is perfect.',
        timestamp: DateTime.now().subtract(const Duration(hours: 2)),
        replies: [
          Comment(
            id: 'c1r1',
            author: users[0], // Alex
            text: 'Thanks! It was a great drive.',
            timestamp: DateTime.now().subtract(const Duration(hours: 1)),
          ),
        ],
      ),
      Comment(
        id: 'c2',
        author: users[2], // Ben
        text: 'Clean Mustang! Love the color.',
        timestamp: DateTime.now().subtract(const Duration(minutes: 30)),
      ),
    ];
  }

  static final List<Post> posts = [
    Post(
      id: 'p1',
      author: users[0], // Alex
      content:
          'Sunset drive with the classic. Nothing beats the feeling of an open road.',
      imageUrl: '${AppConstants.placeholderImageUrl}?text=Sunset+Drive',
      imageHint: 'classic car sunset',
      car: '1966 Ford Mustang',
      createdAt: DateTime.now().subtract(const Duration(hours: 2)),
      likes: 124,
      likedBy: ['u2', 'u3', 'u5'],
      comments: _generateComments(),
    ),
    Post(
      id: 'p2',
      author: users[1], // Mia
      content:
          'New aero parts finally installed on the S15! Ready for the next track day.',
      imageUrl: '${AppConstants.placeholderImageUrl}?text=S15+Aero',
      imageHint: 'nissan silvia modification',
      car: 'Nissan Silvia S15',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      likes: 350,
      likedBy: ['u1', 'u5', 'u9'],
    ),
    Post(
      id: 'p3',
      author: users[3], // Chloe
      content:
          'Got a little muddy today. The Wrangler didn\'t even break a sweat!',
      imageUrl: '${AppConstants.placeholderImageUrl}?text=Muddy+Jeep',
      imageHint: 'jeep offroad mud',
      car: 'Jeep Wrangler Rubicon',
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      likes: 215,
      likedBy: ['u4', 'u8'],
    ),
    Post(
      id: 'p4',
      author: users[5], // Sophia
      content: 'A timeless design. Soaking in the morning light.',
      imageUrl: '${AppConstants.placeholderImageUrl}?text=Classic+Porsche',
      imageHint: 'porsche classic morning',
      car: 'Porsche 911 (964)',
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
      likes: 890,
      likedBy: ['u1', 'u2', 'u3', 'u9'],
    ),
    Post(
      id: 'p5',
      author: users[4], // Marcus
      content:
          'VTEC just kicked in! Track day was incredible. The Type R never disappoints.',
      imageUrl: '${AppConstants.placeholderImageUrl}?text=Type+R+Track',
      car: 'Honda Civic Type R',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
      likes: 445,
      likedBy: ['u1', 'u2', 'u6'],
    ),
  ];

  static final List<Club> clubs = [
    Club(
      id: 'c1',
      name: 'JDM Legends',
      description:
          'A club for enthusiasts of Japanese Domestic Market cars. All models and makes welcome!',
      bannerUrl: '${AppConstants.placeholderBannerUrl}?text=JDM+Legends',
      bannerHint: 'japanese cars night',
      ownerId: 'u2',
      memberIds: ['u1', 'u2', 'u5', 'u9'],
      memberCount: 4,
      createdAt: DateTime.now().subtract(const Duration(days: 30)),
    ),
    Club(
      id: 'c2',
      name: 'German Engineering Alliance',
      description:
          'Celebrating the best of German automotive design and performance. BMW, Porsche, Audi, VW, and more.',
      bannerUrl: '${AppConstants.placeholderBannerUrl}?text=German+Cars',
      bannerHint: 'german cars highway',
      ownerId: 'u3',
      memberIds: ['u3', 'u6'],
      memberCount: 2,
      createdAt: DateTime.now().subtract(const Duration(days: 45)),
    ),
    Club(
      id: 'c3',
      name: '4x4 Trailblazers',
      description:
          'For those who believe the road less traveled is the only way. Off-roading, overlanding, and adventure.',
      bannerUrl: '${AppConstants.placeholderBannerUrl}?text=Offroad+Adventure',
      bannerHint: 'offroad adventure mountains',
      isPrivate: true,
      ownerId: 'u4',
      memberIds: ['u4', 'u8'],
      joinRequestIds: ['u1'],
      memberCount: 2,
      createdAt: DateTime.now().subtract(const Duration(days: 20)),
    ),
    Club(
      id: 'c4',
      name: 'Classic Muscle',
      description:
          'American muscle cars from the golden era. Mustangs, Camaros, Challengers, and more.',
      bannerUrl: '${AppConstants.placeholderBannerUrl}?text=Muscle+Cars',
      ownerId: 'u1',
      memberIds: ['u1', 'u7'],
      memberCount: 2,
      createdAt: DateTime.now().subtract(const Duration(days: 60)),
    ),
  ];

  static final List<Event> events = [
    Event(
      id: 'e1',
      name: 'Cars & Coffee - Downtown',
      date: 'Saturday, Oct 5th, 8:00 AM',
      location: 'Central City Coffee Roasters',
      description:
          'Join us for our weekly Cars & Coffee meetup. All are welcome. Please respect the property and no burnouts!',
      coverUrl: '${AppConstants.placeholderBannerUrl}?text=Cars+Coffee',
      coverHint: 'cars coffee shop',
      attendeeIds: ['u1', 'u3', 'u6'],
      attendeeCount: 3,
      createdAt: DateTime.now().subtract(const Duration(days: 5)),
    ),
    Event(
      id: 'e2',
      name: 'Midnight Touge Run',
      date: 'Friday, Oct 4th, 11:00 PM',
      location: 'Mount Akina Pass',
      description:
          'A spirited drive through the mountain pass. Experienced drivers only. Safety is our top priority.',
      coverUrl: '${AppConstants.placeholderBannerUrl}?text=Mountain+Drive',
      coverHint: 'car mountain night',
      attendeeIds: ['u2', 'u9'],
      attendeeCount: 2,
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
    ),
    Event(
      id: 'e3',
      name: 'Track Day at Laguna Seca',
      date: 'Sunday, Oct 13th, 9:00 AM',
      location: 'WeatherTech Raceway Laguna Seca',
      description:
          'Professional track day with instruction available. Bring your helmet and racing spirit!',
      coverUrl: '${AppConstants.placeholderBannerUrl}?text=Track+Day',
      attendeeIds: ['u1', 'u2', 'u4', 'u5'],
      attendeeCount: 4,
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
    ),
  ];

  // Helper method to get current user (for demo purposes, return first user)
  static User get currentUser => users.first;
}
