import 'package:bwabat/features/main_layout/logic/cubit/home_cubit.dart';
import 'package:bwabat/features/main_layout/ui/widgets/offline_records_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class BuildOfflineRecordsStatus extends StatelessWidget {
  const BuildOfflineRecordsStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final homeCubit = context.read<HomeCubit>();
        final ticketCount = homeCubit.getCachedTicketsCount();
        final isSyncing = state.maybeWhen(
          syncLoading: () => true,
          orElse: () => false,
        );
    
        // Handle sync success state
      return  state.maybeWhen(
          syncSuccess: (tickets)  {
            // UI will automatically rebuild with new ticket count
         return   OfflineRecordsStatus(
          ticketCount: ticketCount,
          onSync: () => homeCubit.syncCachedTickets(),
          isSyncing: isSyncing,
        );
          },
          syncError: (message) {
            return  OfflineRecordsStatus(
          ticketCount: ticketCount,
          onSync: () => homeCubit.syncCachedTickets(),
          isSyncing: isSyncing,
        );
    
          },
          orElse: () {
            return  OfflineRecordsStatus(
          ticketCount: ticketCount,
          onSync: () => homeCubit.syncCachedTickets(),
          isSyncing: isSyncing,
        );
          },
        );
      },
    );
  }
}

