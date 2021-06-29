# Floating Button

1. StoryBoard에 UIImageView 추가.

배경화면으로 써야하므로, **align**기준을 safeArea가 아닌 superView로 맞춰준다.

content mode는 비율을 유지하며 채우는 옵션 - **Aspect Fill**

![Untitled.png](Floating%20Button%2033e61928edbd45cea9cf6009d57edd4e/Untitled.png)

2. StoryBoard에 UIButton 추가(+ 버튼)

버튼은 superView가 아닌 safeArea에 맞춰준다.

![Untitled%201.png](Untitled%201.png)

3. StoryBoard에 FloatingVC를 하나 추가하고, +버튼 눌렸을때 노출되는 버튼들을 추가해준다.

하나의 뷰컨에서 구성할 수도 있지만, 이런식으로 하면 더 깔끔한 화면구성이 됨.

추가적으로 노출되는 버튼들은 +버튼의 CenterX에 동일하게 맞추고, CenterY를 기준으로 간격을 준다.

![Floating%20Button%2033e61928edbd45cea9cf6009d57edd4e/Untitled%202.png](Floating%20Button%2033e61928edbd45cea9cf6009d57edd4e/Untitled%202.png)

4. 메인뷰컨의 + 버튼의 **Action Segue**의 형태로 show를 FloatingVC에 걸어주고 identifier을 ShowPopup으로 정한다.

Segue로 연결하고 나면, FloatingVC의 크기가 줄어든것 처럼 보일때가 있는데, presentation이 automatic으로 설정되어있기 때문. **Full Screen**으로 설정해준다.

![Floating%20Button%2033e61928edbd45cea9cf6009d57edd4e/Untitled%203.png](Floating%20Button%2033e61928edbd45cea9cf6009d57edd4e/Untitled%203.png)

애니메이션 효과는 코드로 직접 만들어서 사용할 것이기 때문에 Segue의 **Animates** 속성은 해제해준다.

![Floating%20Button%2033e61928edbd45cea9cf6009d57edd4e/Untitled%204.png](Floating%20Button%2033e61928edbd45cea9cf6009d57edd4e/Untitled%204.png)

5. 메인뷰컨에서 **prepare** 메서드를 override 해서 화면전환시에 필요한 설정들을 추가해준다.

VC의 속성인 **modalPresentaionStyle**. present 할 때 사용할 수 있는 스타일값.

- **fullScreen** : 나타날 뷰컨이 화면 전체를 덮게 한다(디바이스의 스크린에 대응). 기본옵션값
- **currentContext** : present를 지시하는 뷰컨의 뷰위에 표시된다. 단, 사용할 때 **definesPresentationContext** 값을 true로 설정해주어야 의도대로 화면을 노출시킬 수 있다.
- **overFullScreen** : fullScreent과 비슷하지만, present를 지시한 뷰컨의 뷰를 **컨텍스트에서 날려버리지 않고** 유지한 상태에서 그 위에 새로운 뷰컨을 present 한다.
- **overCurrentContext** : currentContext와 비슷하지만,  present를 지시한 뷰컨의 뷰를 **컨텍스트에서 날려버리지 않고** 유지한 상태에서 그 위에 새로운 뷰컨을 present 한다.

floatingVC의 modalPresentationStyle을 overCurrentContext로 하고, background를 clear(default)로 한다.

**참고** : [https://magi82.github.io/ios-modal-presentation-style-01/](https://magi82.github.io/ios-modal-presentation-style-01/)

6. StoryBoard FloatingVC에 blur 처리를 위해 visual Effect View를 추가한다.

버튼들보다 뒤에 위치해야 하기 때문에 storyBoard의 맨 뒤로 위치시키고, contraint는 superView기준 0으로 맞춘다.

7. storyBoard FloatingVC의 버튼들의 centerY contraint들을 뷰컨에 연결해준다.

viewDidLoad에서 해당 값들을 0으로 초기화 하고, viewDidAppear에서 원하는 값으로 설정해주고 animation 효과를 준다. **layoutIfNeeded** 필수.

8. +버튼을 눌렀을 때 화면을 내리는 처리를 해준다.
