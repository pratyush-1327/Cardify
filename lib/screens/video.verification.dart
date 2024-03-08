import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class VideoVerification extends StatefulWidget {
  static const videoVerificationtRoute = "/videoverification";
  const VideoVerification({super.key});

  @override
  State<VideoVerification> createState() => _VideoVerificationState();
}

class _VideoVerificationState extends State<VideoVerification> {
  String? selectedValue;
  late CameraController controller;
  bool onCamera = false;
  List<CameraDescription>? _cameras;
  int selectedCameraIdx = 0;
  @override
  void initState() {
    super.initState();
    availableCameras().then((availableCameras) {
      _cameras = availableCameras;
      if (_cameras!.isNotEmpty) {
        setState(() {
          // 2
          selectedCameraIdx = 0;
        });

        _initCameraController(_cameras![selectedCameraIdx]).then((void v) {
          setState(() {});
        });
      } else {
        print("No camera available");
      }
    }).catchError((err) {
      // 3
      print('Error: $err.code\nError Message: $err.message');
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  List<String> items = [
    "Aaddhar",
    "Voter Id",
    "PAN",
    "Passport",
    "Driving Licence"
  ];
  @override
  Widget build(BuildContext context) {
    print('called');
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/bg2.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          child: Column(children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 333,
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: const Color(0x00D9D9D9),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 4,
                      color: Colors.black.withOpacity(0.7),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: onCamera
                    ? CameraPreview(controller)
                    : InkWell(
                        radius: 150,
                        borderRadius: BorderRadius.circular(5),
                        splashFactory:
                            InkSparkle.constantTurbulenceSeedSplashFactory,
                        onTap: () {
                          setState(() {
                            controller.resumePreview();
                            onCamera = true;
                          });
                        },
                        splashColor: Colors.black.withOpacity(0.4),
                        child: const Icon(Icons.videocam_outlined,
                            size: 100,
                            color: Color.fromARGB(255, 116, 116, 116))),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        splashColor: Colors.black,
                        onPressed: () {
                          setState(() {
                            // controller.resumePreview();
                            // onCamera = true;
                          });
                        },
                        icon: const Icon(Icons.mic_off_outlined,
                            size: 50, color: Color.fromARGB(255, 0, 0, 0))),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            controller.pausePreview();
                            onCamera = false;
                          });
                        },
                        icon: const Icon(Icons.videocam_off_outlined,
                            size: 50, color: Color.fromARGB(255, 0, 0, 0)))
                  ],
                ),
              ),
            )
          ]),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.red,
            child: InkWell(
              radius: 150,
              splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
              onTap: () {},
              borderRadius: BorderRadius.circular(35),
              splashColor: Colors.white,
              child: const Center(
                child: Icon(
                  Icons.call_end_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future _initCameraController(CameraDescription cameraDescription) async {
    // 3
    controller = CameraController(cameraDescription, ResolutionPreset.high);

    // If the controller is updated then update the UI.
    // 4
    controller.addListener(() {
      // 5
      if (mounted) {
        setState(() {});
      }

      if (controller.value.hasError) {
        print('Camera error ${controller.value.errorDescription}');
      }
    });

    // 6
    try {
      await controller.initialize();
    } on CameraException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.description!.toString())));
    }

    if (mounted) {
      setState(() {});
    }
  }
}
