* public init(frame:), init(corder:) 작성, init(frame:) 에 tintcolor 로 backgroundColor 주기

  > viewController에서 init(frame:) 으로 control을 생성할시 superView의 bounds를 인자로 넘기자!

* 꼭 description 을 포함해서 프로퍼티들 작성 하기 (단축키 option + command + /)

* UIView를 사용 할때 CALayer를 이용할 수 있고, CALayer는 iOS가 GPU를 이용해서 렌더링을 최적화할 수 있게 한다.

* animation 시 Core Graphics를 이용해서 draw(rect:)를 오버라이드 한다면 animation 모든 단계에 control이 re-rendering 되어 매우 비효율적이다. Core Animation 을 이용하자.

* CustomControl의 appearance한 부분과 control적인 부분을 nested class를 사용해서 코딩하자.

* CAShapeLayer 는 CALayer 의 subclass 이고 anti-aliasing과 최적화된 rasterization 기법을 사용해서 임의의 모양을 효율적으로 그려줍니다.

* CAShapeLayer의 path를 그릴때는 UIBezierPath를 이용해서 경로를 그리고 cgPath 프로퍼티를 사용하자

* tintColorDidChange()를 구현해서 tintColor 변화에 따른 UI 변경을 해주자.

* Core Animation 은 CALayer의 임의의 프로퍼티가 바뀌면 (transform 포함) 암시적으로 animation 을 한다.

* keyframe animation 을 이용하면 시작, 끝 지점 뿐만 아니라 중간지점도 지정할 수 있다. 중간 지점들에 도달하는 속도를 CAMediaTimeingFunction 을 통해 지정할 수 있다.
