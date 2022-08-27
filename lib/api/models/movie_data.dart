
class MovieData {
  String? img;
  String? name;
  String? content;
  String? linktrailer;
  String? thumburl;
  String? time;
  String? episodetotal;
  String? actor;
  String? quality;
  String? year;
  String? top;
  String? id;
  List<Tap>? tap;

  MovieData(
      {this.img,
        this.name,
        this.content,
        this.linktrailer,
        this.thumburl,
        this.time,
        this.episodetotal,
        this.actor,
        this.quality,
        this.year,
        this.top,
        this.id,
        this.tap});

  MovieData.fromJson(Map<String, dynamic> json) {
    img = json['img'];
    name = json['name'];
    content = json['content'];
    linktrailer = json['linktrailer'];
    thumburl = json['thumburl'];
    time = json['time'];
    episodetotal = json['episodetotal'];
    actor = json['actor'];
    quality = json['quality'];
    year = json['year'];
    top = json['top'];
    id = json['id'];
    if (json['tap'] != null) {
      tap = <Tap>[];
      json['tap'].forEach((v) {
        tap!.add(new Tap.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img'] = this.img;
    data['name'] = this.name;
    data['content'] = this.content;
    data['linktrailer'] = this.linktrailer;
    data['thumburl'] = this.thumburl;
    data['time'] = this.time;
    data['episodetotal'] = this.episodetotal;
    data['actor'] = this.actor;
    data['quality'] = this.quality;
    data['year'] = this.year;
    data['top'] = this.top;
    data['id'] = this.id;
    if (this.tap != null) {
      data['tap'] = this.tap!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tap {
  String? nametap;
  String? contenttap;
  String? ghichutap;
  String? imgtap;
  String? videotap;

  Tap(
      {this.nametap,
        this.contenttap,
        this.ghichutap,
        this.imgtap,
        this.videotap});

  Tap.fromJson(Map<String, dynamic> json) {
    nametap = json['nametap'];
    contenttap = json['contenttap'];
    ghichutap = json['ghichutap'];
    imgtap = json['imgtap'];
    videotap = json['videotap'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nametap'] = this.nametap;
    data['contenttap'] = this.contenttap;
    data['ghichutap'] = this.ghichutap;
    data['imgtap'] = this.imgtap;
    data['videotap'] = this.videotap;
    return data;
  }
}