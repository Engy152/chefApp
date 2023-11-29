
abstract class LoginStates { }

class AppInitialStates extends LoginStates { }
class LoginLodingStates extends LoginStates { }
class LoginSuccessStates extends LoginStates {}
class LoginErrorStates extends LoginStates {}

class LoginChangPasswordInitialStates extends LoginStates { }
class LoginChangConfirmPasswordInitialStates extends LoginStates { }
class LoginChangOldPasswordInitialStates extends LoginStates { }
class PostImagePickedSuccessState extends LoginStates { }
class PostImagePickedErrorState extends LoginStates { }

class PostImagePickedMealSuccessState extends LoginStates { }
class PostImagePickedMealErrorState extends LoginStates { }
class SwitchLangStates extends LoginStates {}

class RadioButtomState extends LoginStates {}
class NavigationState extends LoginStates {}
