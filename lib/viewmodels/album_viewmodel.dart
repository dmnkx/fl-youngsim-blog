import 'package:fl_youngsim_blog/models/art_image.dart';

class AlbumViewModel {
  final List<ArtImage> albumImages = [
    ArtImage(
      image: 'https://dummyimage.com/600x400/ff0000/00ff00.png',
      title: 'Title 1',
      description: 'Description 1',
    ),
    ArtImage(
      image: 'https://dummyimage.com/600x400/0000ff/ff0000.png',
      title: 'Title 2',
      description: 'Description 2',
    ),
    ArtImage(
      image: 'https://dummyimage.com/400x600/0000ff/ff0000.png',
      title: 'Title 3',
      description: 'Description 3',
    ),
    ArtImage(
      image: 'https://dummyimage.com/400x600/ff0000/0000ff.png',
      title: 'Title 4',
      description: 'Description 4',
    ),
    ArtImage(
      image: 'https://dummyimage.com/500x500/0000ff/ff0000.png',
      title: 'Title 5',
      description: 'Description 5',
    ),
  ];
}
