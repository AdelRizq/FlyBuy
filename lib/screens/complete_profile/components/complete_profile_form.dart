import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/default_button.dart';
import '../../../components/custom_suffix_icon.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String firstName, lastName, phone, address;
  final List<String> errors = [];
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // TODO: go to OTP screen
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newName) => this.firstName = newName,
      onChanged: (name) {
        _formKey.currentState.validate();
      },
      validator: (name) {
        if (name.isEmpty) {
          return kFirstNamelNullError;
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your first name",
        suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/User Icon.svg"),
      ),
      keyboardType: TextInputType.name,
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newName) => this.lastName = newName,
      onChanged: (name) {
        _formKey.currentState.validate();
      },
      validator: (name) {
        if (name.isEmpty) {
          return kLastNamelNullError;
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your last name",
        suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/User Icon.svg"),
      ),
      keyboardType: TextInputType.name,
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      onSaved: (newPhone) => this.phone = newPhone,
      onChanged: (phone) {
        _formKey.currentState.validate();
      },
      validator: (phone) {
        if (phone.isEmpty) {
          return kPhoneNumberNullError;
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/Phone.svg"),
      ),
      keyboardType: TextInputType.phone,
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newAddress) => this.address = newAddress,
      onChanged: (address) {
        _formKey.currentState.validate();
      },
      validator: (address) {
        if (address.isEmpty) {
          return kAddressNullError;
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        suffixIcon:
            CustomSuffixIcon(iconPath: "assets/icons/Location point.svg"),
      ),
      keyboardType: TextInputType.streetAddress,
    );
  }
}
