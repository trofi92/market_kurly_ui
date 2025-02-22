class BenefitBanner {
  final String title;
  final String benefit;
  final String image;

  BenefitBanner({
    required this.title,
    required this.benefit,
    required this.image,
  });
}

List benefitBanners = [
  BenefitBanner(
    title: "컬리가 고른 \n신선한 야채 요리",
    benefit: "이주의 신선 최대 15% 할인",
    image: "assets/images/img_3.png",
  ),
  BenefitBanner(
    title: "아이들 간식을 담은\n레ㅐ시피",
    benefit: "심플리독 최대 20% 할인",
    image: "assets/images/img_2.png",
  ),
  BenefitBanner(
    title: "정갈한 손맛으로 \n행복한 한 끼",
    benefit: "탐나는 밥상 최대 20% 할인",
    image: "assets/images/img_1.png",
  ),
  BenefitBanner(
    title: "건강한 고기요리 돈육",
    benefit: "탄단지 최대 25% 할인",
    image: "assets/images/img_4.png",
  ),
  BenefitBanner(
    title: "건강한 채식요리",
    benefit: "돈마루 최대 10% 할인",
    image: "assets/images/img_3.png",
  ),
];
