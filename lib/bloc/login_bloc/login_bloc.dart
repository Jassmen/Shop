import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/bloc/login_bloc/index.dart';


class LoginBloc extends Bloc<LoginEvent,LoginState>{
  LoginBloc() : super(LoginStateInit());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if(event is LoginEventFetch){
      yield* _mapEventFetch(event);
    }
  }

  Stream<LoginState> _mapEventFetch(LoginEventFetch event) async*{
    try{
      yield LoginStateLoading();

      Response response = await loginFetch(email: event.email, password: event.password);
      if(response.success!){
        yield LoginStateSuccess();
      }else
        yield LoginStateFailed(error:response.message! );
    }catch(error){
      yield LoginStateFailed(error: error.toString());
    }

  }

}