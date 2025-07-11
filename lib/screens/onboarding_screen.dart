import 'package:flutter/material.dart';
import 'package:furniture_app_ui/widgets/background_shape.dart';
import 'package:furniture_app_ui/constants/colors.dart';
import 'package:furniture_app_ui/screens/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // الحصول على أبعاد الشاشة لضبط العناصر بشكل تفاعلي
    final Size screenSize = MediaQuery.of(context).size;

    // ارتفاع الجزء الأخضر من الشاشة (تقريبيًا 70%)
    final double greenSectionHeight = screenSize.height * 0.7;
    // ارتفاع البطاقة البيضاء (تقريبيًا 50% لتتداخل مع الجزء الأخضر)
    final double whiteCardHeight = screenSize.height * 0.5;

    return Scaffold(
      body: Stack(
        children: [
          // 1. القسم الأخضر للخلفية
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: greenSectionHeight,
            child: Container(color: primaryDarkGreen),
          ),

          // 2. صورة الكرسي (توضع فوق الخلفية الخضراء وتتداخل قليلاً)
          Positioned(
            // ضبط الموضع الرأسي والأفقي للصورة
            top: screenSize.height * 0.1, // تبدأ من 10% من ارتفاع الشاشة
            left: screenSize.width * 0.15, // إزاحة من اليسار
            right: screenSize.width * 0.15, // إزاحة من اليمين
            child: Image.asset(
              'assets/images/Item_2.png', // تأكد من صحة المسار
              fit: BoxFit
                  .contain, // لجعل الصورة تتناسب داخل المساحة المخصصة مع الحفاظ على أبعادها
              height: screenSize.height * 0.5, // حجم الصورة
            ),
          ),

          // 3. البطاقة البيضاء ذات الحواف المستديرة
          Positioned(
            bottom: 0, // تثبيت البطاقة في أسفل الشاشة
            left: 0,
            right: 0,
            height: whiteCardHeight,

            child: ClipPath(
              clipper: BackgroundShape(),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30), // حافة مستديرة علوية يسارية
                    topRight: Radius.circular(30), // حافة مستديرة علوية يمينية
                  ),
                ),
                padding: const EdgeInsets.all(30), // هوامش داخلية للبطاقة
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // محاذاة العناصر لليسار
                  children: [
                    Spacer(),
                    // العنوان الرئيسي
                    const Text(
                      'Your Personalized\nFurniture Hub',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 15), // مسافة فارغة
                    // النص الوصفي
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel felis accumsan, cursus neque condimentum, cursus ante.',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const Spacer(),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        shape: BoxShape.rectangle,
                        color: const Color.fromARGB(255, 154, 240, 199),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Swipe to explore now',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              ),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    16,
                                    213,
                                    118,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_ios, // أيقونة السهم
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
