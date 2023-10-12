class Member {
  String name;
  String nickname;
  MBTI? mbti;

  Member({
    required this.name,
    required this.nickname,
    required this.mbti,
  });
}

enum MBTI {
  ISTJ,
  ISFJ,
  INFJ,
  INTJ,
  ISTP,
  ISFP,
  INFP,
  INTP,
  ESTP,
  ESFP,
  ENFP,
  ENTP,
  ESTJ,
  ESFJ,
  ENFJ,
  ENTJ
}
