import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_absolute_path/flutter_absolute_path.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:music_application/app/view/base_components/base_text.dart';
import 'package:music_application/app/view/base_components/shimmer.dart';
import 'package:music_application/utils/images.dart';
import 'package:uri_to_file/uri_to_file.dart';

import '../../../routers/app_log.dart';

class MusicItem extends StatefulWidget {
  final SongInfo songInfo;
  final VoidCallback onTap;
  final ShimmerOrientation orientation;
  final int numLine;

  const MusicItem(
      {Key? key,
      required this.songInfo,
      required this.onTap,
      required this.orientation,
      required this.numLine})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MusicState();
  }
}

class _MusicState extends State<MusicItem> {
  Future<FileImage?> _convertUriToFile(String uriString) async {
    try {
      // Don't pass uri parameter using [Uri] object via uri.toString().
      // Because uri.toString() changes the string to lowercase which causes this package to misbehave

      // If you are using uni_links package for deep linking purpose.
      // Pass the uri string using getInitialLink() or linkStream
      /*    var result = await ImageGallerySaver.saveFile(
        songInfo.,
        quality: 100,
        name: name,
        isReturnImagePathOfIOS: true,
      );

      print (result['filePath'])*/
      final filePath = await FlutterAbsolutePath.getAbsolutePath(uriString);
      // dLog("_convertUriToFile: filePath: $filePath");
      final image = File(filePath);
      var result = await ImageGallerySaver.saveImage(image.readAsBytesSync(),
          quality: 100,
          name: "${image.path}-${DateTime.now().toIso8601String()}");

      // dLog("_convertUriToFile: result: $result");
      File file = await toFile(uriString);
      // File file = await toFile(Uri.parse(result['filePath']));
      // dLog("_convertUriToFile: ${file.uri} --- ${file.path}");
      // File file = await toFile(uriString);
      // dLog("_convertUriToFile: file: $file --- filePath: $filePath");
      FileImage fileImage = FileImage(file);
      return fileImage;
    } on UnsupportedError catch (e) {
      // dLog("UnsupportedError: ${e}");
      print(e.message); // Unsupported error for uri not supported
      return null;
    } on IOException catch (e) {
      // dLog("IOException: ${e}");
      print(e); // IOException for system error
      return null;
    } catch (e) {
      // dLog("else: ${e}");
      print(e); // General exception
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    widget.songInfo;
    return SizedBox(
        width: 200,
        height: 120,
        child: Card(
          child: InkWell(
            onTap: () {
              widget.onTap();
            },
            child: FutureBuilder<FileImage?>(
                future: _convertUriToFile(widget.songInfo.uri),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      {
                        dLog("ConnectionState.waiting: ");
                        return ShimmerLoading(
                            orientation: widget.orientation,
                            numLine: widget.numLine);
                      }

                    default:
                      if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        // dLog("Result File Image: ${snapshot.data}");
                        if (snapshot.data == null) {
                          return Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 15),
                                    child: ImageUtils.placeImageMusic,
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: Center(
                                        child: BaseTextView(
                                            widget.songInfo.title,
                                            RenderStyle.Description)),
                                  ),
                                )
                              ],
                            ),
                          );
                        } else {
                          return Column(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: snapshot.data!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: Center(
                                  child: Center(
                                    child: Text(widget.songInfo.title),
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                      }
                  }
                  return Container();
                }),
          ),
        ));
  }
}
