<template>
  <div
    class="theme-container h-full flex flex-col justify-between"
    :class="pageClasses"
    @touchstart="onTouchStart"
    @touchend="onTouchEnd"
  >
    <div>
      <Navbar v-if="shouldShowNavbar" @toggle-sidebar="toggleSidebar" />

      <div class="sidebar-mask" @click="toggleSidebar(false)"></div>

      <Sidebar :items="sidebarItems" @toggle-sidebar="toggleSidebar">
        <slot name="sidebar-top" slot="top" />
        <slot name="sidebar-bottom" slot="bottom" />
      </Sidebar>

      <Home v-if="$page.frontmatter.home" />

      <Page v-else :sidebar-items="sidebarItems">
        <slot name="page-top" slot="top" />
        <slot name="page-bottom" slot="bottom" />
      </Page>
    </div>
    <!-- <footer
      class="site-footer"
      style="background-image:url(https://test.sicon.eco/wp-content/uploads/2020/06/footer-bg.png); background-size: cover;"
    >
      <div class="container text-left footer-container container-override">
        <div class="row align-items-end">
          <div class="col-lg-4 col-md-6 col-12">
            <div class="footer-box footer-about">
              <img src="https://test.sicon.eco/wp-content/uploads/2020/06/GPS-logo.png" alt />
              <p>
                Nobelstr. 15
                <br />70569 Stuttgart
              </p>
              <p>
                <a href="mailTo:info@gps-stuttgart.de">info@gps-stuttgart.de</a>
              </p>
              <p>
                <a href="tel:+49 711 6870 31 30">+49 711 6870 31 30</a>
              </p>
            </div>
            <div class="footer-box mt-2">
              <ul class="social-icons">
                <li>
                  <a href="#" target="_blank">
                    <i class="fab fa-linkedin"></i>
                  </a>
                </li>
                <li>
                  <a href="#" target="_blank">
                    <i class="fab fa-xing"></i>
                  </a>
                </li>
                <li>
                  <a href="#" target="_blank">
                    <i class="fab fa-facebook-f"></i>
                  </a>
                </li>
                <li>
                  <a href="#" target="_blank">
                    <i class="fab fa-youtube"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 col-6 pb-1">
            <div class="footer-box footer-menu">
              <h2 class="widget-title">About Us</h2>
              <div>
                <ul id="menu-uber-uns" class="menu custom-line-height">
                  <li id="menu-item-81" class="menu-item">
                    <a href="#">Company</a>
                  </li>
                  <li id="menu-item-82" class="menu-item">
                    <a href="#">Team</a>
                  </li>
                  <li id="menu-item-83" class="menu-item">
                    <a href="#">Career</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-6 pb-1">
            <div class="footer-box footer-menu">
              <h2 class="widget-title">Products</h2>
              <div>
                <ul class="menu custom-line-height">
                  <li id="menu-item-86" class="menu-item">
                    <a href="#">SICON.OS</a>
                  </li>
                  <li id="menu-item-87" class="menu-item">
                    <a href="#">SICON.PLUG</a>
                  </li>
                  <li id="menu-item-88" class="menu-item">
                    <a href="#">SICON.APP</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-md-6 col-12 pb-2">
            <div class="footer-box footer-menu">
              <h2 class="widget-title">Resources</h2>
              <div>
                <ul class="menu custom-line-height">
                  <li id="menu-item-89" class="menu-item">
                    <a href="#">Documentation (PIM)</a>
                  </li>
                  <li id="menu-item-90" class="menu-item">
                    <a href="#">Guide</a>
                  </li>
                  <li id="menu-item-91" class="menu-item">
                    <a href="#">Media</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="container copyright-section container-override">
        <div class="row">
          <div class="col-lg-4 col-12 text-left">
            <div class="copyright-text">
              <p>© 2020 GPS GmbH. All Rights Reserved.</p>
            </div>
          </div>

          <div class="col-lg-8 col-12 text-lg-right text-left">
            <div class="copyright-menu">
              <div class="menu-copyright-menu-container">
                <ul id="menu-copyright-menu" class="menu">
                  <li id="menu-item-96" class="menu-item">
                    <a href="#">Terms of Use</a>
                  </li>
                  <li id="menu-item-97" class="menu-item">
                    <a href="#">Data protection</a>
                  </li>
                  <li id="menu-item-98" class="menu-item">
                    <a href="#">Imprint</a>
                  </li>
                  <li id="menu-item-99" class="menu-item">
                    <a href="#">Terms and conditions</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer> -->
  </div>
</template>

<script>
import Home from "@theme/components/Home.vue";
import Navbar from "@theme/components/Navbar.vue";
import Page from "@theme/components/Page.vue";
import Sidebar from "@theme/components/Sidebar.vue";
import { resolveSidebarItems } from "../util";

export default {
  components: { Home, Page, Sidebar, Navbar },

  data() {
    return {
      isSidebarOpen: false
    };
  },

  computed: {
    shouldShowNavbar() {
      const { themeConfig } = this.$site;
      const { frontmatter } = this.$page;
      if (frontmatter.navbar === false || themeConfig.navbar === false) {
        return false;
      }
      return (
        this.$title ||
        themeConfig.logo ||
        themeConfig.repo ||
        themeConfig.nav ||
        this.$themeLocaleConfig.nav
      );
    },

    shouldShowSidebar() {
      const { frontmatter } = this.$page;
      return (
        !frontmatter.home &&
        frontmatter.sidebar !== false &&
        this.sidebarItems.length
      );
    },

    sidebarItems() {
      return resolveSidebarItems(
        this.$page,
        this.$page.regularPath,
        this.$site,
        this.$localePath
      );
    },

    pageClasses() {
      const userPageClass = this.$page.frontmatter.pageClass;
      return [
        {
          "no-navbar": !this.shouldShowNavbar,
          "sidebar-open": this.isSidebarOpen,
          "no-sidebar": !this.shouldShowSidebar
        },
        userPageClass
      ];
    }
  },

  mounted() {
    this.$router.afterEach(() => {
      this.isSidebarOpen = false;
    });
  },

  methods: {
    toggleSidebar(to) {
      this.isSidebarOpen = typeof to === "boolean" ? to : !this.isSidebarOpen;
      this.$emit("toggle-sidebar", this.isSidebarOpen);
    },

    // side swipe
    onTouchStart(e) {
      this.touchStart = {
        x: e.changedTouches[0].clientX,
        y: e.changedTouches[0].clientY
      };
    },

    onTouchEnd(e) {
      const dx = e.changedTouches[0].clientX - this.touchStart.x;
      const dy = e.changedTouches[0].clientY - this.touchStart.y;
      if (Math.abs(dx) > Math.abs(dy) && Math.abs(dx) > 40) {
        if (dx > 0 && this.touchStart.x <= 80) {
          this.toggleSidebar(true);
        } else {
          this.toggleSidebar(false);
        }
      }
    }
  }
};
</script>
