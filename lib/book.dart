class Book {
  String type;
  String name;
  String publishers;
  DateTime date;
  String imgUrl;
  num score;
  num ratings;
  String review;
  double height;
  Book(
  this.type,
  this.name,
  this.publishers,
  this.date,
  this.imgUrl,
  this.score,
  this.ratings,
  this.review,
  this.height,
  );
  static List<Book> generateBooks(){
    return[
      Book(
        'Fiction',
        'The Infinite Future',
        'Tim Wirkus',
        DateTime(2018,12,31),
        'images/infinite_future.png',
        4.0,
        400,
        'Wirkus here creates parallel stries, the results of each of which affect the outcomes of the other.',
        220,
      ),
      Book(
        'Short stories',
        'The Sun, the Moon, the Stars',
        'Junot Diaz',
        DateTime(1999,3,3),
        'images/junot_diaz.png',
        4.2,
        892,
        'I always admire Junot books and this series was amazing.',
        220,
      ),
      Book(
        'Mystery',
        'Dancing with the Tiger',
        'Lili Wright',
        DateTime(2019,3,23),
        'images/dancing_with_the_tiger.png',
        4.4,
        278,
        'With a fresh voice, vivid descriptions, and intriguing characters, at no time does this book read like a 1st novel. Dancing with the Tiger is literary, with the pacing and plotting of a thriller. ',
        220,
      ),
      Book(
        'Fiction',
        'The Little Mermaid',
        'Janet Maslin',
        DateTime(1989,9,15),
        'images/little_mermaid.png',
        4.7,
        48,
        'A marvel of skillful animation, witty songwriting and smart planning. It is designed to delight filmgoers of every conceivable stripe.',
        220,
      ),
      Book(
        'Thriller',
        'SIX OF CROWS',
        'Leigh Bardugo ',
        DateTime(2017,5,17),
        'images/six_crows.png',
        4.7,
        512,
        'If you are in mood for a series, this is a definite yes. The duology will keep you glued to the book. The plot,the characters,the development will make you fall in love with the book. This was my first book by this author and i am hooked',
        220,
      ),
      Book(
        'Thriller',
        'A Time of Witches (A Mindful Things Series Book 2)',
        'Mya Duong ',
        DateTime(2018,12,17),
        'images/time_of_witches.png',
        4.4,
        245,
        'Great book so far! It’s the 2nd book in a series about Lauren, a woman with special powers. I like the character development and I’m excited to see what happens next!',
        220,
      ),
      Book(
        'Romance',
        'Willows of Fate (Lands of Sun and Stone)',
        'Suzanna J Linton',
        DateTime(2015,1,28),
        'images/blabla.png',
        4.0,
        310,
        'What a brilliant first book in a series can\'t wait till the next one is out wont give anything away but has some twists and turns and realy good characters it is a must for those who like Y.A stories but realy good for those who like fantasy and magic its brilliant just excellent.',
        220,
      ),
      Book(
        'hostory',
        'This Is The Way-Walk Ye In It',
        'David E Navarro',
        DateTime(2017,11,23),
        'images/david.jpg',
        5.0,
        892,
        'Wonderful book I recommend to anyone ***',
        220,
      ),


    ];




  }
}