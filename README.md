# Swift Memory Anti Pattern
Swift 개발 중 메모리 이슈를 유발할 수 있는 패턴을 모아보고 반성하자.

## Pattern1 - Retain Cycle
* 가장 기본적인 실수인 순환 참조 케이스
* 상위 순환 참조 대상에 `weak` 사용하여 해결

## Pattern2 - Retain Cycle (partial)
* `UIView` 내부에서 자신도 모르게 부모뷰를 참조 받아버려 순환 참조 발생
* `UIViewController`는 메모리 해제되었지만 `UIView`가 참조 대상을 잃은체 구천을 떠돌게 된다.

## Pattern3 - Closure (observer)
* 같은 컨텍스트에서 즉시 소비되는 케이스가 아니면서(escaping) 클로져 내부에서 `self` 참조하게 되면 메모리에 그냥 남아있게 된다.
* `#selector()`, `UIView.animate()` 경우는 예외
* 클로져 내부에서 `weak self` 참조하도록 수정 필요

## Pattern4 - Closure (escaping)
* 직접 클로져 함수를 함수 외부(클래스 속성)에서 강한 참조로 남겨본 케이스
* Pattern3 같은 해결책 필요
