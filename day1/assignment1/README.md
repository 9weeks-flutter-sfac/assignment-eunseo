# first_app

A new Flutter project.

## 실행화면
![스크린샷 2023-09-18 오후 7 42 05](https://github.com/9weeks-flutter-sfac/assignment-eunseo/assets/85021536/e4af2beb-2a60-43b0-87e1-987a08c2f18e)

### 사용 위젯
1. Container(): 세로로 가운데 위치시키기 위해 컨테이너로 감싸줌.
  `alignment: AlignMent.center`사용
2. RichText(): 과제 요구사항.
  다양한 텍스트 스타일을 혼합해 사용할 수 있게 된다. RichText의 자손 노드로 TextSpan이 온다.

```dart
RichText(
  text: const TextSpan(
    text: '부모노드',
    children: [ //자식노드 리스트
      TextSpan(),
      TextSpan(),
    ],
  ),
),
```

3. WidgetSpan()
   플러터 문서에는 TextSpan을 쓴다고 하는데, 아이콘을 쓰기 위해 WidgetSpan 또한 RichText의 자손 노드중 하나로 활용했다.
```dart
RichText(
  text: const TextSpan(
    text: '부모노드',
    children: [ //자식노드 리스트
      TextSpan(),
      WidgetSpan(
        child: Icon(),
      ),
    ],
  ),
),
```

### 스타일링
  * TextStyle(decoration, fontSize, fontWeight, color)
  * decoration: 텍스트 데코레이션. TextDecoration.lineThrough(취소선), TextDecoration.underline(강조선)
  * fontSize: 단위는 적지 않는다. px 단위가 아니고, point이다. 기기의 해상도(dpi)에 따라 화면에 다르게 출력된다.
  * fontWeight: FontWeight.bold 사용
  * color:
    기본 - Colors.pink,<br/>
    rgb, opacity 설정하는법 - Color.fromRGBO(r, g, b, opacity); <br/>
    hex로 설정하는법 - Color(value); // alpha red green blue 순
