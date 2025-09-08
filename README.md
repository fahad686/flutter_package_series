# Flutter Package Series

This repository is a collection of Flutter package usage examples.  
Each folder or screen demonstrates the **implementation and usage of popular Flutter packages** with clean code and detailed explanations.

---

## 📊 Example: Pie Chart Implementation

In this example, we have used the **[pie_chart](https://pub.dev/packages/pie_chart)** package to display different types of **Pie Charts** in Flutter.

### **Features Covered**
1. **Disc Pie Chart**  
   - Standard pie chart that displays data in a full circle.  
   - Each slice represents the percentage share of a category.  
   - Example use case: Market share, demographics, etc.

2. **Ring Pie Chart (Donut Style)**  
   - Modern donut-style chart using `chartType: ChartType.ring`.  
   - Adjustable ring thickness with `ringStrokeWidth`.  
   - Example use case: Dashboards, financial apps, etc.

3. **Gradient Pie Chart**  
   - Beautiful, gradient-colored pie chart using `gradientList`.  
   - Ideal for UI-rich apps where design aesthetics are a priority.

---

## 📸 Screenshots

Below is the output of the pie chart variations:

### **Ring Pie Chart & Gradient Pie Chart**
<img src="a52a9fe8-d6d7-48d1-a443-a227157da30b.png" width="300" alt="Pie Chart Screenshot">

---

## 🚀 Getting Started

### **1. Add Dependency**
Add the `pie_chart` package to your `pubspec.yaml` file:
```yaml
dependencies:
  pie_chart: ^5.3.2
