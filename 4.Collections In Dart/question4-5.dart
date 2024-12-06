void main(){
 List<String> friends = ['Alice', 'Bob', 'Andrew', 'Catherine', 'Anna', 'Brian', 'Amy'];
  print('\nFriends starting with "A":');
  List<String> friendsStartingWithA = friends.where((name) => name.startsWith('A')).toList();
  print(friendsStartingWithA);

}