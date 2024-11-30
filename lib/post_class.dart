class Post {
  String avatar;
  String username;
  String textPost;
  String? image; //dapat bernilai null / nullable

  Post(this.avatar, this.username, this.textPost,
      [this.image]); //parameter bersifat opsional
}

List<Post> user = [
    Post(
        'https://images.unsplash.com/photo-1469598614039-ccfeb0a21111?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D',
        'user1',
        'tugas tahap individu',
        'assets/tugas.jpeg'),
    Post(
        'https://images.unsplash.com/photo-1564510182791-29645da7fac4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZmFufGVufDB8fDB8fHww',
        'user2',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
    Post(
        'https://images.unsplash.com/photo-1543852786-1cf6624b9987?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG1lbWV8ZW58MHx8MHx8fDA%3D',
        'user3',
        'all in chat gpt moment :',
        'assets/code.jpeg'),
    Post(
        'https://images.unsplash.com/photo-1528998831154-b0276a56dcd9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDM3fEpwZzZLaWRsLUhrfHxlbnwwfHx8fHw%3D',
        'user4',
        'Genre music kalian apa teman teman ?',
        'assets/diamdenganalbum.jpeg'),
  ];