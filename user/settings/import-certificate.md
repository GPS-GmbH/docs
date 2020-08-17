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

ToDo - This section is for exception in browser

**Advantage:**

* Quickly done.
* The customer does not need to get our root certificate.

**Disadvantages:**

* The system/browser is trusting the certificate on an exception base only. (Icon does not turn green.)
* It must be done for all browsers separately.
* If we ever need further certificates, i.e. for the OPC UA server, new exceptions must be granted.
* As a result of this test: Edge needs the confirmation of the exception for every session.

  #### Exception in FireFox

  Images will be added here.

  #### Exception in Chrome

  Images will be added here.

  #### Exception in Edge

  Images will be added here.

### Import System Wide

ToDo - This section is for importing the certificate system wide

**Advantages:**

* When the browsers accept the chosen key and signature algorithms and lengths, one import serves all browsers that use the system's certificate manager (currently edge and chrome)
* GPS can issue further certificates without the customer's need to import anything again.
* No repeated accepting of certificates on edge browser.

**Disadvantages:**

* Lots of steps.
* Customer must get the root certificate on a separate way.

#### Via Chrome

This section is for importing the certificate system wide via chrome.

#### Via Windows file browser

This section is for importing the certificate system wide via windows file browser

### Import in Browser

This section is for importing the certificate in a browser

#### Firefox

This section is for importing the certificate in Firefox browser

## Mac

This section is for Mac operating system