---

---
# Import Certificate

To install the self signed root certificate for your system please follow your system specific guide.

## Root Certificate

Please download the root certificate file from [here](https://app-store-api.exa.sicon.io/uploads/gps_ca.crt "Root Certificate").

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

* In Firefox browser open your SICON.OS website.
* On page load, Click on the option "**Advanced**".

  ![](/image2018-12-14_13-32-4.png)

##### Step 2 :

Click on "**Add Exception...**"

![](/image2018-12-14_13-5-32.png)

##### Step 3 :

Click on "**Confirm Security Exception**"

![](/image2018-12-14_13-6-25.png)

##### Result

![](/firefox_result.png)

#### Exception in Chrome

Please follow the below steps to add an exception in Chrome browser.

##### Step 1 :

* In Chrome browser open your SICON.OS website.
* On page load, Click on the option "**Advanced**".

![](/advance.png)

##### Step 2 :

Click on "**Proceed to hostname.local (Unsafe)**"

![](/proceed-with-unsafe.png)

##### Result

![](/chrome-result.png)

#### Exception in Edge

Please follow the below steps to add an exception in Edge browser.

##### Step 1 :

* In Edge browser open your SICON.OS website.
* On page load, Click on "**Details**"

  ![](/details.png)

##### Step 2 :

* Click on "**Go on to the webpage**".

  ![](/gotowebpage.png)

##### Result

* ![](/certificateerror.png)

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

Open "**Settings"** in Chrome

![](/settingsinchrome.png)

##### Step 2 :

Click to open "**Advanced Settings"**

![](/chromeadvancedsettings.png)

##### Step 3 :

Click to open the system's certificate manager

![](/chromecertificatemanage.png)

##### Step 4 :

* Click on the "**Trusted Root Authority Certificate"**.
* Select the correct store (aka category) for the certificate.

  ![](/trustedrootauthoritycertificate.png)

##### Step 5 :

* Now "**select the Certificate file**" from the store and click on "**Import**"

  ![](/cert-file.png)

##### Step 6 :

* Now the Certificate Import Wizard will get open. Click on "**Next**" to continue.

  ![](/certificateimportwizard.png)


* Click on "**Browse**" to specify the file you want to import.

  ![](/chromebrowse.png)  
* Select the Certificate file from your system and click on "**Open**".

  ![](/chromerootcertfile.png)
* After selecting the .crt file, click on "**Next**".

  ![](/chromenext.png)

##### Step 7 :

* Confirm the store by selecting "Place all certificates in the following store" and click on "**Next**"

  ![](/chromecertificatestore.png)

##### Step 8 :

* Click on "**Finish**" to complete the installation process for certificate. 

  ![](/chromefinish.png)
* Confirm the Security Warning message of the Installation by click on "**Yes**" and then click "**Ok**".

  ![](/chromesecuritywarning.png)

  ![](/installationcomplete.png)

#### Via Windows file browser

##### Step 1 :

* Select the **.crt file** from your system.

  ![](/wfb-open-cert-file.png)
* A Security Warning message will be appeared. Click on "**Open**"  

  ![](/wfb-security-message.png)

##### Step 2 :

To start install procedure, click on "**Install Certificate**

![](/wfb-installcertificate.png)

##### Step 3 :

* Now the Certificate Import Wizard will get open.


* Select the store Location, by click on "Current User" 

  ![](/wfbstore-location.png)

  or "Local Machine" and then click on "**Next**".

  ![](/wfbloacalmachine.png)

##### Step 4 :

An administrator User Control window then asks for permission (no use of snippet possible). Please confirm.

##### Step 5 :

Confirm the store by selecting "Place all certificates in the following store" and click on "**Browse**"

![](/wfbbrowse.png)

##### Step 6 :

Select the correct store (aka category) for the certificate: "**Trusted Root Authority Certificate"** and the click on "**OK**"

* ![](/wfbcertificatestore.png)

##### Step 6 :

After selecting the .crt file, click on "**Next**".

![](/wfbfile-to-import-next.png)

##### Step 7 :

* Confirm the store by selecting "Place all certificates in the following store" and click on "**Next**"

  ![](/chromecertificatestore.png)

##### Step 8 :

* Click on "**Finish**" to complete the installation process for certificate. 

  ![](/chromefinish.png)
* Confirm the Security Warning message of the Installation by click on "**Yes**" and then click "**Ok**".

  ![](/chromesecuritywarning.png)

  ![](/installationcomplete.png)

### Import in Browser (Firefox only)

#### Firefox

To Import an additional root-certificate to the Firefox browser, please follow the below steps: 

##### Step 1 :

Click on "**Options**" in Firefox browser menu.

![](/firefox-option.png)

##### Step 2 :

* To find the browser's Certificate Manager, click on "**Privacy & Security**" option and select the given options. 

  ![](/firefoxprivacy-security.png)
* After selecting the appropriate options, click on "**View Certificates.**."

  ![](/firefoxviewcertificates.png)

##### Step 3 :

To Import the certificate file:

* After click on the "View Certificate", the Certificate Manager page will be opened.
* Select the "**Authorities**" panel.
* Then click on "**Import**" option given below.

  ![](/firefoxcertificate-manager.png)
* Now select the .crt file you want to import from your system and click on "**Open**"

##### Step 4 :

Set the purposes for the certificate by selecting the option "**Trust this CA to identify websites**." and then click "**OK**"

![](/firefoxdownloadingcertificate.png)

##### Result :

The certificate will get imported successfully.

![](/firefoxresult.png)

This section is for importing the certificate in a browser

#### 

This section is for importing the certificate in Firefox browser

## Mac

This section is for Mac operating system