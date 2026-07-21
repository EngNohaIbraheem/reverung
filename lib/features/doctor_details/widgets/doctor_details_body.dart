class DoctorDetailsBody extends StatelessWidget {
  const DoctorDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          DoctorHeader(),

          SizedBox(height:20),

          DoctorCard(),

          SizedBox(height:20),

          StatisticsCard(),

          SizedBox(height:30),

          ServicesSection(),

          SizedBox(height:25),

          DoctorMap(),

        ],
      ),
    );
  }
}