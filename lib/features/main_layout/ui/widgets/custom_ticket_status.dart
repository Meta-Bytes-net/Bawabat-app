import 'package:bwabat/core/helpers/extensions.dart';
import 'package:bwabat/core/resources/app_assets.dart';
import 'package:bwabat/core/resources/sizes.dart';
import 'package:bwabat/features/main_layout/ui/screen/home_screen.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticket_widget/ticket_widget.dart';

import '../../../../core/theming/text_styles.dart';

class CustomTicketStatus extends StatelessWidget {
  final TicketType? ticketType;
  const CustomTicketStatus({super.key, this.ticketType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            Assets.svgsBawabatLogo,
            height: 50.h,
            width: 50.h,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          BuildTicketWidget(ticketType: ticketType),
          // gapH12,
          SvgPicture.asset(
            Assets.svgsSync,
            height: 90.h,
            width: 90.w,
          ),
          gapH64,
        ],
      ),
    );
  }
}

class BuildTicketWidget extends StatelessWidget {
  final TicketType? ticketType;

  const BuildTicketWidget({super.key, this.ticketType});

  @override
  Widget build(BuildContext context) {
    return TicketWidget(
      width: double.infinity,
      height: context.height * .35,
      isCornerRounded: true,
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                gapH20,
                if (ticketType == TicketType.success)
                  SvgPicture.asset(Assets.svgsSuccess),
                if (ticketType == TicketType.error)
                  SvgPicture.asset(Assets.svgsFailure),
                gapH20,
                if (ticketType == TicketType.success)
                  Text(
                    "Valid Ticket",
                    style: TextStyles.font20blackSemiBold,
                  ),
                if (ticketType == TicketType.error)
                  Text(
                    "Unvalid Ticket!",
                    style: TextStyles.font20blackSemiBold,
                  ),
              ],
            ),
          ),

          const DottedLine(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            lineLength: double.infinity,
            lineThickness: 1.0,
            dashLength: 4.0,
            dashColor: Colors.black,
            dashRadius: 0.0,
            dashGapLength: 4.0,
            dashGapColor: Colors.transparent,
            dashGapRadius: 0.0,
          ),
          // const Spacer(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                children: [
                  const Spacer(),
                  _infoItem("Ticket Number", "123456789"),
                  gapH8,
                  _infoItem("Visitor Name", "Ahmed"),
                  gapH8,
                  _infoItem("Time", "07:80 AM"),
                  gapH8,
                  _infoItem("Ticket Type", "Standard"),
                  const Spacer()
                ],
              ),
            ),
          )
          // const DottedLine(
          //   color: Colors.black,

          //   dashWidth: 5,
          // ),
        ],
      ),
    );
  }

  _infoItem(String title, String value) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyles.font13GrayRegular,
        ),
        const Spacer(),
        if (ticketType == TicketType.success) Text(value),
        if (ticketType == TicketType.error)
          DottedLine(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            lineLength: 60.w,
            lineThickness: 1.0,
            dashLength: 4.0,
            dashColor: Colors.black,
            dashRadius: 0.0,
            dashGapLength: 4.0,
            dashGapColor: Colors.transparent,
            dashGapRadius: 0.0,
          ),
      ],
    );
  }
}
