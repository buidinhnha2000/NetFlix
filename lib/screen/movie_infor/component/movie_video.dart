import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MovieVideo extends StatefulWidget {
  const MovieVideo({Key? key, required this.linkTrailer}) : super(key: key);

  final String linkTrailer;

  @override
  State<MovieVideo> createState() => _MovieVideoState();
}

class _MovieVideoState extends State<MovieVideo> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.linkTrailer)
      ..initialize().then((_){
        setState(() {
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        color: Colors.black26,
          child:Column(
            children: [
              Container(
                width: size.height,
                child:Stack(
                  children: [
                    Container(
                      child: _controller!.value.isInitialized
                          ?AspectRatio(aspectRatio: _controller!.value.aspectRatio,
                        child: VideoPlayer(_controller!),)
                          :Container(),
                    ),
                    Container(
                        height: 200,
                        child: Center(
                          child: IconButton(
                              onPressed: (){
                                _controller!.value.isPlaying ? _controller!.pause() : _controller!.play();
                              },
                              icon: Icon(Icons.play_circle_outline_outlined,
                                size: 50,
                                color: Colors.black12,)
                          ),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 190),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 20,
                            width: 90,
                            color: Colors.black54,
                            child: Center(
                              child: Text('xem truoc',
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                            ),
                          ),
                          IconButton(
                              onPressed: null,
                              icon: Icon(Icons.volume_off,
                                color: Colors.white,)
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              VideoProgressIndicator(
                _controller!,
                allowScrubbing: true,
                padding:EdgeInsets.all(0.0),

              )
            ],
          )
      ),
    );
  }
}
