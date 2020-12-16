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
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Miss Cupcake`
  String get missCupcake {
    return Intl.message(
      'Miss Cupcake',
      name: 'missCupcake',
      desc: '',
      args: [],
    );
  }

  /// `We are proud to offer cupcakes and cakes that are freshly baked within hours, if not minutes, for your enjoyment.`
  String get missCupcakeDescription {
    return Intl.message(
      'We are proud to offer cupcakes and cakes that are freshly baked within hours, if not minutes, for your enjoyment.',
      name: 'missCupcakeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Shop now`
  String get shopNow {
    return Intl.message(
      'Shop now',
      name: 'shopNow',
      desc: '',
      args: [],
    );
  }

  /// `The Simple,\nSweet Life`
  String get theSimpleLife {
    return Intl.message(
      'The Simple,\nSweet Life',
      name: 'theSimpleLife',
      desc: '',
      args: [],
    );
  }

  /// `Our cupcakes are always made with the finest ingredients, creating a spark that makes your taste buds dance. You’ll want to indulge in each and every decadent flavor.`
  String get simpleSweetLifeDescription {
    return Intl.message(
      'Our cupcakes are always made with the finest ingredients, creating a spark that makes your taste buds dance. You’ll want to indulge in each and every decadent flavor.',
      name: 'simpleSweetLifeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Why miss cupcake`
  String get whyMissCupcake {
    return Intl.message(
      'Why miss cupcake',
      name: 'whyMissCupcake',
      desc: '',
      args: [],
    );
  }

  /// `Make your day a little sweeter`
  String get makeDaySweeter {
    return Intl.message(
      'Make your day a little sweeter',
      name: 'makeDaySweeter',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String get addToCart {
    return Intl.message(
      'Add to cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `Once upon a time..`
  String get onceUponATime {
    return Intl.message(
      'Once upon a time..',
      name: 'onceUponATime',
      desc: '',
      args: [],
    );
  }

  /// `The art of baking runs deep in our family. Growing up on our family we learned from the best. Our mom was an amazing baker. She not only taught us how to bake, she passed along her values of quality, honesty and integrity.`
  String get onceUponATimeDescription {
    return Intl.message(
      'The art of baking runs deep in our family. Growing up on our family we learned from the best. Our mom was an amazing baker. She not only taught us how to bake, she passed along her values of quality, honesty and integrity.',
      name: 'onceUponATimeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Our story`
  String get ourStory {
    return Intl.message(
      'Our story',
      name: 'ourStory',
      desc: '',
      args: [],
    );
  }

  /// `Suger up your inbox`
  String get sugerUpInbox {
    return Intl.message(
      'Suger up your inbox',
      name: 'sugerUpInbox',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get emailAddress {
    return Intl.message(
      'Email address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Shop`
  String get shop {
    return Intl.message(
      'Shop',
      name: 'shop',
      desc: '',
      args: [],
    );
  }

  /// `Cookies policy`
  String get cookiesPolicy {
    return Intl.message(
      'Cookies policy',
      name: 'cookiesPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Terms of use`
  String get termsOfUse {
    return Intl.message(
      'Terms of use',
      name: 'termsOfUse',
      desc: '',
      args: [],
    );
  }

  /// `© MISS CUPCAKES 2020`
  String get copyright {
    return Intl.message(
      '© MISS CUPCAKES 2020',
      name: 'copyright',
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
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}