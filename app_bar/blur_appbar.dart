child: Scaffold(
        // Allow appBar show content
        extendBodyBehindAppBar: true,
        // Alpha la do trong suot
        backgroundColor: Colors.white.withAlpha(200),
        appBar: AppBar(
          // Khong gian linh hoat ben trong appBar, co the chua widget
          // ClipRect de gioi han no trong mot hcn
          flexibleSpace: ClipRect(
              //Dung de ap dung hieu ung mo cho widget con
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(color: Colors.transparent),
          )),
          //Thiet lap do nang (cao thap) cho appBar
          elevation: 0,
          title: const Center(
            child: Text(
              'Home',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),