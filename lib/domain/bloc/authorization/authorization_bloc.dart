import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:currency_app/domain/models/user/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_bloc.freezed.dart';
part 'authorization_event.dart';
part 'authorization_state.dart';

@singleton
class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {

}