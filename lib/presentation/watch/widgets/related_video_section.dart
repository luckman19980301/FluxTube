import 'package:flutter/material.dart';
import 'package:fluxtube/core/constants.dart';
import 'package:fluxtube/domain/watch/models/video/watch_resp.dart';
import 'package:fluxtube/generated/l10n.dart';
import 'package:fluxtube/widgets/related_video_widget.dart';
import 'package:go_router/go_router.dart';

class RelatedVideoSection extends StatelessWidget {
  const RelatedVideoSection({
    super.key,
    required this.locals,
    required this.watchInfo,
  });

  final S locals;
  final WatchResp watchInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          locals.relatedTitle,
          style: TextStyle(
              color: Theme.of(context).textTheme.labelMedium!.color,
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
        kHeightBox20,
        SizedBox(
          height: 250,
          width: double.infinity,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final String videoId =
                    watchInfo.relatedStreams![index].url!.split('=').last;
                final String channelId = watchInfo.uploaderUrl!.split("/").last;
                return GestureDetector(
                    onTap: () => context.go('/watch/$videoId/$channelId'),
                    child: RelatedVideoWidget(
                      title: watchInfo.title ?? locals.noVideoTitle,
                      thumbnailUrl: watchInfo.relatedStreams![index].thumbnail,
                      duration: watchInfo.duration,
                    ));
              },
              separatorBuilder: (context, index) => kWidthBox10,
              itemCount: watchInfo.relatedStreams?.length ?? 0),
        ),
      ],
    );
  }
}
