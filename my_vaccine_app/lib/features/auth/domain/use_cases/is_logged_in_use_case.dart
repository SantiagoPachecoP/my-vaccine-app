import 'package:dartz/dartz.dart';
import 'package:my_vaccine_app/core/error/failure.dart';
import 'package:my_vaccine_app/core/use_case/base_use_case.dart';
import 'package:my_vaccine_app/features/auth/domain/repositories/auth_repository.dart';

class IsLoggedInUseCase extends BaseUseCase<bool, DefaultParams>{

  final AuthRepository authRepository;


  IsLoggedInUseCase({required this.authRepository});

  @override
  Future<Either<Failure, bool>> call(DefaultParams param) async {
    return await authRepository.isLoggedIn();
  }

}