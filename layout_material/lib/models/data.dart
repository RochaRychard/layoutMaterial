

import 'models.dart';
final User user_0 = User(
  name: Name(first: 'Rychard', last: 'Silva'),
  avatarUrl: 'assets/avatar_1.png',
  lastActive: DateTime.now(),
);

final User user_1 = User(
  name: Name(first: 'John', last: 'Doe'),
  avatarUrl: 'assets/avatar_2.png',
  lastActive: DateTime.now().subtract(const Duration(minutes: 10)),
);

final User user_2 = User(
  name: Name(first: 'Jane', last: 'Smith'),
  avatarUrl: 'assets/avatar_3.png',
  lastActive: DateTime.now().subtract(const Duration(minutes: 20)),
);

final User user_3 = User(
  name: Name(first: 'Alice', last: 'Johnson'),
  avatarUrl: 'assets/avatar_4.png',
  lastActive: DateTime.now().subtract(const Duration(hours: 2)),
);

final User user_4 = User(
  name: Name(first: 'Ziad', last: 'Aouad'),
  avatarUrl: 'assets/avatar_4.png',
  lastActive: DateTime.now().subtract(const Duration(hours: 6)),
);

final List<Email> emails = [
  Email(
    sender: user_1,
    recipients: [],
    subject: 'Meeting Reminder',
    content: 'Don\'t forget about our meeting tomorrow at 10 AM.',
    
  ),
  Email(
    sender: user_2,
    recipients: [],
    subject: 'Peixe Douhua',
    content: 'The project is progressing well. We are on track for the deadline.',
    
  ),
  Email(
    sender: user_3,
    recipients: [],
    subject: 'Vacation Request',
    content: 'I would like to request vacation from June 15th to June 20th.',
  ),


  Email(
    sender: user_4,
    recipients: [],
    subject: 'Vacation Request',
    content: 'I would like to request vacation from June 15th to June 20th.',
  ),
];
  final List<Email> replies = [
  Email(
    sender: user_2,
    recipients: [user_3, user_2],
    subject: 'Dinner Club',
    content:
        'I think its time for us to finally try that new noodle shop downtown that doesnt use menus. Anyone else have other suggestions for dinner club this week? Im so intrigued by this idea of a noodle restaurant where no one gets to order for themselves - could be fun, or terrible, or both :)\n\nSo',
  ),

  Email(
    sender: user_0,
    recipients: [user_3, user_2],
    subject: 'Dinner Club',
    content:
        'Yes! I forgot about that place! Im definitely up for taking a risk this week and handing control over to this mysterious noodle chef. I wonder what happens if you have allergies though? Lucky none of us have any otherwise Id be a bit concerned.\n\nThis is going to be great. See you all at the usual time?',
  ),
];



