import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();

final DateFormat formatter = DateFormat('dd/MM/yyyy');

enum Category { food, transportation, bills, entertainment, other }

extension CategoryExtension on Category {
  String get name {
    switch (this) {
      case Category.food:
        return 'Food';
      case Category.transportation:
        return 'Transportation';
      case Category.bills:
        return 'Bills';
      case Category.entertainment:
        return 'Entertainment';
      case Category.other:
        return 'Other';
    }
  }
}

const categoryIcons = {
  Category.food: Icons.fastfood,
  Category.transportation: Icons.directions_car,
  Category.bills: Icons.receipt,
  Category.entertainment: Icons.movie,
  Category.other: Icons.category,
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  // Constructor
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  String get categoryName => category.name;
  IconData get categoryIcon => categoryIcons[category]!;
  String get formattedDate => formatter.format(date);
}

class ExpenseBucket {
  final Category category;
  final List<Expense> expenses;

  // Constructor
  const ExpenseBucket({
    required this.expenses,
    required this.category,
  });

  // Constructor filter by category
  ExpenseBucket.forCategory(
    List<Expense> expenses,
    this.category,
  ) : expenses =
            expenses.where((expense) => expense.category == category).toList();

  // Getters
  double get totalExpenses {
    double total = 0;

    for (final expense in expenses) {
      total += expense.amount;
    }

    return total;
  }
}
