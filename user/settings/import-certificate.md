---
actionText: Download Certificate
actionLink: https://app-store-api.exa.sicon.io/uploads/gps_ca.crt

---
# Import Certificate

To install the self signed root certificate for your system please follow your system specific guide.

## Root Certificate

Please download the root certificate file from below.

##### [Download Certificate](https://app-store-api.exa.sicon.io/uploads/gps_ca.crt "Download Root Certificate")

## Windows

There are three ways to use our preinstalled self signed certificate in Windows operating system:

1. Add an exception in your browser.
2. Import an additional root-certificate from us system wide (Edge and Chrome)
3. Import an additional root-certificate from us to the browser (Firefox only)

### Exception in Browser

**Advantage:**

* Quickly done.
* The customer does not need to get our root certificate.

**Disadvantages:**

* The system/browser is trusting the certificate on an exception base only. (Icon does not turn green.)
* It must be done for all browsers separately.
* If we ever need further certificates, i.e. for the OPC UA server, new exceptions must be granted.
* As a result of this test: Edge needs the confirmation of the exception for every session.

#### Exception in FireFox

Please follow the below steps to add an exception in Firefox browser.

##### Step 1 :

* In Firefox browser, Open your SICON.OS website.
* On page load, Click on the option "**Advanced.**

![](/2020-08-25-14_53_11-warning_-potential-security-risk-ahead.jpg)

##### Step 2 :

Click on "**Accept the Risk and Continue**"

![](/2020-08-25-14_53_26-warning_-potential-security-risk-ahead.jpg)

##### Result

The Icon below shows that the certificate is imported.

![](/2020-08-25-14_53_56-sicon-os.jpg)

#### Exception in Chrome

Please follow the below steps to add an exception in Chrome browser.

##### Step 1 :

* In Chrome browser open your SICON.OS website.
* On page load, Click on the option "**Advanced**".

![](/2020-08-25-14_47_35-privacy-error.jpg)

##### Step 2 :

Click on "**Proceed to hostname.local (Unsafe)**"

![](/2020-08-25-14_47_39-privacy-error.jpg)

##### Result

The Icon below shows that it is unclear if the certificate is imported.

![](/2020-08-25-14_48_16-sicon-os.jpg)

#### Exception in Edge

Please follow the below steps to add an exception in Edge browser.

##### Step 1 :

* In Edge browser open your SICON.OS website.
* On page load, Click on "**Advanced**"

![](/2020-08-25-14_50_44-privacy-error-profile-1-microsoft-edge.jpg)

##### Step 2 :

* Click on "**Continue to hostname.local (Unsafe)**"

![](/2020-08-25-14_50_51-privacy-error-profile-1-microsoft-edge.jpg)

##### Result

The Icon below shows that it is unclear if the certificate is imported.

![](/2020-08-25-14_51_21-sicon-os-profile-1-microsoft-edge.jpg)

### Import System Wide

There are two methods to import the certificate system wide, import via Chrome browser or via windows file browser.

**Advantages:**

* When the browsers accept the chosen key and signature algorithms and lengths, one import serves all browsers that use the system's certificate manager (currently edge and chrome)
* GPS can issue further certificates without the customer's need to import anything again.
* No repeated accepting of certificates on edge browser.

**Disadvantages:**

* Lots of steps.
* Customer must get the root certificate on a separate way.

#### Via Chrome browser

##### Step 1 :

Open "**Settings"** in Chrome.

![](/2020-08-25-15_19_25-greenshot.jpg)

##### Step 2 :

Click to open "**Privacy and security"**

![](/2020-08-25-15_19_35-settings.jpg)

##### Step 3 :

Click on "**Security"**

![](/2020-08-25-15_19_43-settings.jpg)

##### Step 4 :

Then click on "**Manage certificates**"

![](/2020-08-25-15_19_51-settings-security.jpg)

##### Step 4 :

Click on the "**Trusted Root Certification"**.

![](/2020-08-25-15_21_07-certificates.jpg)

##### Step 5 :

Click on "**Import**"

![](/2020-08-25-15_21_10-certificates.jpg)

##### Step 6 :

* Now the Certificate Import Wizard will get open. Click on "**Next**" to continue.

  ![](/2020-08-25-15_21_13-certificate-import-wizard.jpg)
* Click on "**Browse**" to specify the file you want to import.

  ![](/2020-08-25-15_21_16-certificate-import-wizard.jpg)
* Select the Certificate file (.crt) from your system and click on "**Open**".

  ![](/2020-08-25-15_21_38-open.jpg)
* After selecting the .crt file, click on "**Next**".

  ![](/2020-08-25-15_21_42-certificate-import-wizard.jpg)
* Confirm the store by selecting "Place all certificates in the following store" and then click on "**Next**"

  ![](/2020-08-25-15_21_45-certificate-import-wizard.jpg)
* Click on "**Finish**" to complete the installation process of certificate Import.

  ![](/2020-08-25-15_21_48-certificate-import-wizard.jpg)
* Confirm the Security Warning message of the Installation by click on "**Yes**" and then click "**Ok**".

  ![](/2020-08-25-15_21_51-security-warning.jpg)

  ![](/2020-08-25-15_21_55-certificate-import-wizard.jpg)

##### Result

The Icon below shows that the certificate is imported.

![](/2020-08-25-15_22_27-sicon-os.jpg)

#### Via Windows file browser

##### Step 1 :

* Select the **.crt file** from your system.

  ![](/2020-08-25-15_24_30-os-c_.jpg)
* A Security Warning message will be appeared. Click on "**Open**"

  ![](/2020-08-25-15_24_36-open-file-security-warning.jpg)

##### Step 2 :

To start install procedure, click on "**Install Certificate..**"

![](/2020-08-25-15_24_42-certificate.jpg)

##### Step 3 :

* Now the Certificate Import Wizard will get open.
* Select the Store Location, by click on "Current User"

  ![](/2020-08-25-15_24_50-certificate-import-wizard.jpg)

  or "Local Machine" and then click on "**Next**".

  ![](/2020-08-25-15_25_30-certificate-import-wizard.jpg)

##### Step 4 :

An administrator User Control window then asks for permission (no use of snippet possible). Please confirm.

##### Step 5 :

Confirm the store by selecting "Place all certificates in the following store" and click on "**Browse**"

![](/2020-08-25-15_26_07-certificate-import-wizard.jpg)

##### Step 6 :

Select the correct store (aka category) for the certificate: "**Trusted Root Certification Authorities"** and then click on "**OK**"

![](/2020-08-25-15_26_22-select-certificate-store.jpg)

##### Step 7 :

Confirm the store by selecting "Place all certificates in the following store" and click on "**Next**"

![](/2020-08-25-15_26_26-certificate-import-wizard.jpg)

##### Step 8 :

* Click on "**Finish**" to complete the installation process for certificate.
* Confirm the Security Warning message of the Installation by click on "**Yes**" and then click "**Ok**".

  ![](/2020-08-25-15_26_33-security-warning.jpg)

  ![](/2020-08-25-15_26_37-certificate-import-wizard.jpg)

#### Via Edge browser

##### Step 1 :

Open your Edge browser system and click to open the "**Settings**".

![](/2020-08-25-15_01_28-settings.jpg)

##### Step 2 :

Click to open "**Privacy and security"**

![](/2020-08-25-15_01_54-settings-profile-1-microsoft-edge.jpg)

##### Step 3:

Then click on "**Manage certificates**"

![](/2020-08-25-15_01_54-settings-manage-certificates.jpg)

##### Step 4 :

Click on the "**Trusted Root Certification"**.

![](/2020-08-25-15_02_15-certificates.jpg)

##### Step 5 :

Click on "**Import**"

![](/2020-08-25-15_04_41-certificates.jpg)

##### Step 6 :

* Now the Certificate Import Wizard will get open. Click on "**Next**" to continue.

![](/2020-08-25-15_05_00-certificate-import-wizard.jpg)

* Click on "**Browse**" to specify the file you want to import.

  ![](/2020-08-25-15_05_07-certificate-import-wizard.jpg)
* Select the Certificate file (.crt) from your system and click on "**Open**".

  ![](/2020-08-25-15_09_22-open.jpg)
* After selecting the .crt file, click on "**Next**".

  ![](/2020-08-25-15_09_28-certificate-import-wizard.jpg)
* Confirm the store by selecting "Place all certificates in the following store" and then click on "**Next**"

  ![](/2020-08-25-15_09_32-certificate-import-wizard.jpg)
* Click on "**Finish**" to complete the installation process of certificate Import.

  ![](/2020-08-25-15_09_36-certificate-import-wizard.jpg)
* Confirm the Security Warning message of the Installation by click on "**Yes**" and then click "**Ok**".

  ![](/2020-08-25-15_09_42-security-warning.jpg)

  ![](/2020-08-25-15_09_49-certificate-import-wizard.jpg)

##### Result

The Icon below shows that the certificate is imported.

![](/2020-08-25-15_11_02-sicon-os-profile-1-microsoft-edge.jpg)

### Import in Browser (Firefox only)

To Import an additional root-certificate to the Firefox browser, please follow the below steps:

##### Step 1 :

Click on "**Options**" in Firefox browser menu.

![](/2020-08-25-15_38_58-greenshot.jpg)

##### Step 2 :

* Click on "**Privacy & Security**" option.

  ![](/2020-08-25-15_39_11-options.jpg)
* After selecting the appropriate options, click on "**View Certificates.**."

  ![](/2020-08-25-15_39_26-options.jpg)

##### Step 3 :

To Import the certificate file:

* After click on the "View Certificate", the Certificate Manager page will be opened.
* Select the "**Authorities**" panel.
* Then click on "**Import**" option given below.

  ![](/2020-08-25-15_39_53-options.jpg)
* Now select the .crt file you want to import from your system and click on "**Open**"

  ![](/2020-08-25-15_40_06-select-file-containing-ca-certificate-s-to-import.jpg)

##### Step 4 :

Set the purposes for the certificate by selecting the option "**Trust this CA to identify websites**." and then click "**OK**"

![](/2020-08-25-15_40_38-downloading-certificate.jpg)

##### Result :

The certificate will get imported successfully.

![](/2020-08-25-15_41_54-sicon-os.jpg)

## Mac

This section is for Mac operating system (To Do...)