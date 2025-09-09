import 'package:farm_thoughts_web_app/commons/widgets/k_cached_network_profile_image.dart';
import 'package:farm_thoughts_web_app/core/extensions/ui/responsive_layout.dart';
import 'package:farm_thoughts_web_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AssignedDeliveryAgentDetailsCard extends StatelessWidget {
  final String deliveryAgentName;
  final String deliveryAgentNumber;

  const AssignedDeliveryAgentDetailsCard({
    super.key,
    required this.deliveryAgentName,
    required this.deliveryAgentNumber,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenWidth * 0.05,
      child: Row(
        spacing: context.screenWidth * 0.003,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: KCachedNetworkProfileImage(
              imageUrl:
                  "https://plus.unsplash.com/premium_photo-1672239496290-5061cfee7ebb?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              height: context.screenWidth * 0.04,
              width: context.screenWidth * 0.04,
            ),
          ),

          Column(
            spacing: context.screenWidth * 0.001,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                deliveryAgentName,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold,
                  fontSize: context.screenWidth * 0.010,
                  color: AppColors.secondaryColor,
                ),
              ),
              Text(
                deliveryAgentNumber,
                style: TextStyle(color: AppColors.hintTextFormFiledColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
