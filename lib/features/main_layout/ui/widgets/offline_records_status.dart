import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bwabat/core/theming/text_styles.dart';

class OfflineRecordsStatus extends StatelessWidget {
  final int ticketCount;
  final VoidCallback onSync;
  final bool isSyncing;

  const OfflineRecordsStatus({
    super.key,
    required this.ticketCount,
    required this.onSync,
    required this.isSyncing,
  });

  @override
  Widget build(BuildContext context) {
    if (ticketCount == 0) return const SizedBox.shrink();

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: const Color(0xFF1C3B66),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: Colors.amber.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.offline_bolt,
                color: Colors.amber,
              ),
              SizedBox(width: 8.w),
              Text(
                '$ticketCount records pending sync',
                style: TextStyles.font14WhiteSemiBold    ,
              ),
            ],
          ),
          if (isSyncing)
            const SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          else
            TextButton.icon(
              onPressed: onSync,
              icon: const Icon(
                Icons.sync,
                color: Colors.amber,
                size: 20,
              ),
              label: Text(
                'Sync Now',
                style: TextStyles.font12witeRegular.copyWith(
                  color: Colors.amber,
                ),
              ),
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
        ],
      ),
    );
  }
}
