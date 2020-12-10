---
actionText: Download Certificate
actionLink: https://app-store-api.exa.sicon.io/uploads/gps_ca.crt

---
# Import Certificate

Web browsers use Secure Sockets Layer (SSL) or Transport Layer Security (TLS), to encrypt traffic between Client Systems and Server Computers to protect the confidential data or to prove the page's authenticity. The entity that issued the Certificate known as \`Certificate Authority´ and the Certificate must also be trusted by the web browser, which involves installing the issuer Certificate so the browser knows that issuer is valid and reliable.

These issued Certificates are included in the trust centres of Operating Systems (Microsoft Windows 10, Apple's OSX, Android, iOS, ....) or in the Certificate management of the browser, like Firefox.

As the local area devices are not reachable by a global URL or URN - like google.com, there is no chance to anchor trust in the Certificates of these devices. When the customer tries to load the web page of such a device via https, this leads to the warning dialogs of the browser.

There are three options, to get around this warning dialogue:

1. Add an exception in your browser (Firefox, Chrome and Edge browser).
2. Import the GPS Root Certificate in your OS via the trust centre of the Operating System or via specific Web browsers.
3. Import the GPS Root Certificate only in the browser. That works for Firefox.

## Download Certificate

Please download the GPS Root Certificate file from below.

#### [Download Certificate](https://app-store-api.exa.sicon.io/uploads/gps_ca.crt "Download Root Certificate")

&nbsp;

## Windows OS

### Browser Exception

**Advantages:**

* Quickly done.
* No need to import the GPS Root Certificate

**Disadvantages:**

* The System/browser is trusting the Certificate on an exception base only. (Icon does not turn green.)

  ![](/exception_sicon-os.jpg)
* It must be done for all browsers separately.
* Exceptions must be added for each installation (SICON.HW, SICON.VM,...)
* Edge browser needs the confirmation of the exception for every session.

### → Exception in FireFox

Please follow the below steps to add an exception in Firefox browser.

##### Step 1 :

* Open the SICON.OS website.
* Click on the option "**Advanced.**

![](/2020-08-25-14_53_11-warning_-potential-security-risk-ahead.jpg)

##### Step 2 :

Click on "**Accept the Risk and Continue**"

![](/2020-08-25-14_53_26-warning_-potential-security-risk-ahead.jpg)

##### Result

The Icon below shows that the Certificate is imported.

![](/2020-08-25-14_53_56-sicon-os.jpg)

### → Exception in Chrome

Please follow the below steps to add an exception in Chrome browser.

##### Step 1 :

* Open the SICON.OS website.
* Click on the option "**Advanced**".

![](/2020-08-25-14_47_35-privacy-error.jpg)

##### Step 2 :

Click on "**Proceed to hostname.local (Unsafe)**"

![](/2020-08-25-14_47_39-privacy-error.jpg)

##### Result

The Icon below shows that it is unclear if the certificate is imported.

![](/2020-08-25-14_48_16-sicon-os.jpg)

### → Exception in Edge

Please follow the below steps to add an exception in Edge browser.

##### Step 1 :

* In Edge browser open your SICON.OS website.
* On page load, Click on "**Advanced**"

![](/2020-08-25-14_50_44-privacy-error-profile-1-microsoft-edge.jpg)

##### Step 2 :

Click on "**Continue to hostname.local (Unsafe)**"

![](/2020-08-25-14_50_51-privacy-error-profile-1-microsoft-edge.jpg)

##### Result

The Icon below shows that it is unclear if the certificate is imported.

![](/2020-08-25-14_51_21-sicon-os-profile-1-microsoft-edge.jpg)

### Import system wide

##### On the Operating System level

"I'm thorough and want the green security padlock when I'm using Chrome, Windows or Edge Browser"

There are three methods to import the GPS Root Certificate on the Operating System level, import via :

* Chrome Browser
* Windows File Browser
* Edge Browser

**Advantages:**

* All SICON.OS installations show the green padlock with single import.
* All Browsers that use the trust centre of the Operating System will switch to green with single import.
* No repeated accepting of Certificates on Edge Browser.

**Disadvantages:**

* Lots of steps.
* Download of the GPS Root Certificate is required.

### → Via Chrome browser

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

Click on "**Manage certificates**"

![](/2020-08-25-15_19_51-settings-security.jpg)

##### Step 4 :

Click on "**Trusted Root Certification"**.

![](/2020-08-25-15_21_07-certificates.jpg)

##### Step 5 :

Click on "**Import**"

![](/2020-08-25-15_21_10-certificates.jpg)

##### Step 6 :

* The Certificate Import Wizard will get open. Click on "**Next**" to continue.

  ![](/2020-08-25-15_21_13-certificate-import-wizard.jpg)
* Click on "**Browse**" to specify the file you want to import.

  ![](/2020-08-25-15_21_16-certificate-import-wizard.jpg)
* Select the Certificate file from your system and click on "**Open**".

  ![](/2020-08-25-15_21_38-open.jpg)
* Click on "**Next**".

  ![](/2020-08-25-15_21_42-certificate-import-wizard.jpg)
* Confirm the store by selecting "Place all certificates in the following store" and then click on "**Next**"

  ![](/2020-08-25-15_21_45-certificate-import-wizard.jpg)
* Click on "**Finish**" to complete the installation process of Certificate Import.

  ![](/2020-08-25-15_21_48-certificate-import-wizard.jpg)
* Confirm the Security Warning message of the Installation by click on "**Yes**" and then click "**Ok**".

  ![](/2020-08-25-15_21_51-security-warning.jpg)

  ![](/2020-08-25-15_21_55-certificate-import-wizard.jpg)

##### Result

The Icon below shows that the Certificate is imported.

![](/2020-08-25-15_22_27-sicon-os.jpg)

### → Via Windows file browser

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

### → Via Edge browser

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

* After clicking on the "View Certificate", the Certificate Manager page will be opened.
* Select the "**Authorities**" panel.
* Then click on "**Import**" option given below.

  ![](/2020-08-25-15_39_53-options.jpg)
* Now select the .crt file you want to import from your system and click on "**Open**"

  ![](/2020-08-25-15_40_06-select-file-containing-ca-certificate-s-to-import.jpg)

##### Step 4 :

Set the purpose for the certificate by selecting the option "**Trust this CA to identify websites**." and then click "**OK**"

![](/2020-08-25-15_40_38-downloading-certificate.jpg)

##### Result :

The certificate will get imported successfully.

![](/2020-08-25-15_41_54-sicon-os.jpg)

## Mac

This section is for Mac operating system (To Do...)