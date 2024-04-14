void main() async {
  final post = await fetchpost();
  print(post.title);
  print(post.userId);

} 

Future<Post> fetchpost() {
  const delay = Duration(seconds: 3);

  return Future.delayed(delay,(){
    return Post('I am FraNzY', 18);
  });
}

class Post{
  String title;
  int userId;

  Post(this.title, this.userId);
}