extension GstCalculator on double {
  double calculateGst(double gstPercentage) {
    return (this * gstPercentage) / 100;
  }
}