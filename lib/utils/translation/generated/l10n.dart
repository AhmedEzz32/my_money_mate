// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Translation History`
  String get translation_history {
    return Intl.message(
      'Translation History',
      name: 'translation_history',
      desc: '',
      args: [],
    );
  }

  /// `View the history of all translations`
  String get translation_history_description {
    return Intl.message(
      'View the history of all translations',
      name: 'translation_history_description',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get see_all {
    return Intl.message(
      'See All',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `See Less`
  String get see_less {
    return Intl.message(
      'See Less',
      name: 'see_less',
      desc: '',
      args: [],
    );
  }

  /// `Khaled Ezz`
  String get khaled_ezz {
    return Intl.message(
      'Khaled Ezz',
      name: 'khaled_ezz',
      desc: '',
      args: [],
    );
  }

  /// `Osama Ezz`
  String get osama_ezz {
    return Intl.message(
      'Osama Ezz',
      name: 'osama_ezz',
      desc: '',
      args: [],
    );
  }

  /// `Ahmed Ezz`
  String get ahmed_ezz {
    return Intl.message(
      'Ahmed Ezz',
      name: 'ahmed_ezz',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Weekly`
  String get weekly {
    return Intl.message(
      'Weekly',
      name: 'weekly',
      desc: '',
      args: [],
    );
  }

  /// `Monthly`
  String get monthly {
    return Intl.message(
      'Monthly',
      name: 'monthly',
      desc: '',
      args: [],
    );
  }

  /// `Yearly`
  String get yearly {
    return Intl.message(
      'Yearly',
      name: 'yearly',
      desc: '',
      args: [],
    );
  }

  /// `Daily`
  String get daily {
    return Intl.message(
      'Daily',
      name: 'daily',
      desc: '',
      args: [],
    );
  }

  /// `My Transactions`
  String get my_transactions {
    return Intl.message(
      'My Transactions',
      name: 'my_transactions',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get statistics {
    return Intl.message(
      'Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Account`
  String get wallet_account {
    return Intl.message(
      'Wallet Account',
      name: 'wallet_account',
      desc: '',
      args: [],
    );
  }

  /// `My Investment`
  String get my_investment {
    return Intl.message(
      'My Investment',
      name: 'my_investment',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `All Expenses`
  String get all_expenses {
    return Intl.message(
      'All Expenses',
      name: 'all_expenses',
      desc: '',
      args: [],
    );
  }

  /// `$20.129`
  String get dollar_20_129 {
    return Intl.message(
      '\$20.129',
      name: 'dollar_20_129',
      desc: '',
      args: [],
    );
  }

  /// `Augest 2024`
  String get augest_2024 {
    return Intl.message(
      'Augest 2024',
      name: 'augest_2024',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get balance {
    return Intl.message(
      'Balance',
      name: 'balance',
      desc: '',
      args: [],
    );
  }

  /// `Income`
  String get income {
    return Intl.message(
      'Income',
      name: 'income',
      desc: '',
      args: [],
    );
  }

  /// `Expenses`
  String get expenses {
    return Intl.message(
      'Expenses',
      name: 'expenses',
      desc: '',
      args: [],
    );
  }

  /// `Customer Name`
  String get customer_name {
    return Intl.message(
      'Customer Name',
      name: 'customer_name',
      desc: '',
      args: [],
    );
  }

  /// `Type Customer Name`
  String get type_customer_name {
    return Intl.message(
      'Type Customer Name',
      name: 'type_customer_name',
      desc: '',
      args: [],
    );
  }

  /// `Customer Email`
  String get customer_email {
    return Intl.message(
      'Customer Email',
      name: 'customer_email',
      desc: '',
      args: [],
    );
  }

  /// `Type Customer Email`
  String get type_customer_email {
    return Intl.message(
      'Type Customer Email',
      name: 'type_customer_email',
      desc: '',
      args: [],
    );
  }

  /// `Item Name`
  String get item_name {
    return Intl.message(
      'Item Name',
      name: 'item_name',
      desc: '',
      args: [],
    );
  }

  /// `Type Item Name`
  String get type_item_name {
    return Intl.message(
      'Type Item Name',
      name: 'type_item_name',
      desc: '',
      args: [],
    );
  }

  /// `Item Amount`
  String get item_amount {
    return Intl.message(
      'Item Amount',
      name: 'item_amount',
      desc: '',
      args: [],
    );
  }

  /// `USD`
  String get usd {
    return Intl.message(
      'USD',
      name: 'usd',
      desc: '',
      args: [],
    );
  }

  /// `Add More Details`
  String get add_more_details {
    return Intl.message(
      'Add More Details',
      name: 'add_more_details',
      desc: '',
      args: [],
    );
  }

  /// `Send Money`
  String get send_money {
    return Intl.message(
      'Send Money',
      name: 'send_money',
      desc: '',
      args: [],
    );
  }

  /// `Latest Transactions`
  String get latest_transactions {
    return Intl.message(
      'Latest Transactions',
      name: 'latest_transactions',
      desc: '',
      args: [],
    );
  }

  /// `Quick Invoice`
  String get quick_invoice {
    return Intl.message(
      'Quick Invoice',
      name: 'quick_invoice',
      desc: '',
      args: [],
    );
  }

  /// `Design Service`
  String get design_serice {
    return Intl.message(
      'Design Service',
      name: 'design_serice',
      desc: '',
      args: [],
    );
  }

  /// `Design Product`
  String get design_product {
    return Intl.message(
      'Design Product',
      name: 'design_product',
      desc: '',
      args: [],
    );
  }

  /// `Product Royalty`
  String get product_royalty {
    return Intl.message(
      'Product Royalty',
      name: 'product_royalty',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Design Service`
  String get design_service {
    return Intl.message(
      'Design Service',
      name: 'design_service',
      desc: '',
      args: [],
    );
  }

  /// `My Card`
  String get my_card {
    return Intl.message(
      'My Card',
      name: 'my_card',
      desc: '',
      args: [],
    );
  }

  /// `Name Card`
  String get name_card {
    return Intl.message(
      'Name Card',
      name: 'name_card',
      desc: '',
      args: [],
    );
  }

  /// `Cash Withdrawal`
  String get cash_withdrawal {
    return Intl.message(
      'Cash Withdrawal',
      name: 'cash_withdrawal',
      desc: '',
      args: [],
    );
  }

  /// `Cash Deposit`
  String get cash_deposit {
    return Intl.message(
      'Cash Deposit',
      name: 'cash_deposit',
      desc: '',
      args: [],
    );
  }

  /// `Transfer`
  String get transfer {
    return Intl.message(
      'Transfer',
      name: 'transfer',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Landing Page`
  String get landing_page {
    return Intl.message(
      'Landing Page',
      name: 'landing_page',
      desc: '',
      args: [],
    );
  }

  /// `Juni Mobile App`
  String get juni_mobile_app {
    return Intl.message(
      'Juni Mobile App',
      name: 'juni_mobile_app',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
