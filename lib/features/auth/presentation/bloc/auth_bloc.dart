// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   final LoginUseCase loginUseCase;

//   AuthBloc(this.loginUseCase) : super(AuthInitial()) {
//     on<AuthLoginRequested>((event, emit) async {
//       emit(AuthLoading());
//       try {
//         await loginUseCase(event.email, event.password);
//         emit(AuthSuccess());
//       } catch (e) {
//         emit(AuthFailure("Login failed"));
//       }
//     });
//   }
// }
