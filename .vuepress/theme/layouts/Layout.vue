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
        <footer class="bg-dark text-gray-200 leading-6">
            <div class="w-3/5 mx-auto flex flex-wrap py-32">
                <div class="w-1/3 px-4">
                    <img src="https://gps-stuttgart.de/wp-content/uploads/2020/09/Artboard-1-1.png" class="mb-8 w-3/4" alt="">
                    <p>Nobelstr. 15</p>
                    <p>70569 Stuttgart</p>
                    <p>info@gps-stuttgart.de</p>
                    <p>+49 711 6870 31 30</p>
                </div>
                <div class="w-1/3 px-4 flex flex-col">
                    <p class="font-bold text-lg mb-4 text-white">Über Uns</p>
                    <a href="https://gps-stuttgart.de/unternehmen/">Unternehmen</a>
                    <a href="https://gps-stuttgart.de/unternehmen/">Team</a>
                    <a href="https://gps-stuttgart.de/unternehmen/">Karriere</a>
                </div>
                <div class="w-1/3 px-4 flex flex-col">
                    <p class="font-bold text-lg mb-4 text-white">Produkte</p>
                    <a href="https://shop.sicon.eco/sicon-os/" target="_blank">SICON.OS</a>
                    <a href="https://shop.sicon.eco/sicon-plug/" target="_blank">SICON.PLUG</a>
                    <a href="https://shop.sicon.eco/sicon-app/" target="_blank">SICON.APP</a>
                </div>
                <div class="w-full px-4 border-t border-gray-600 mt-16 py-8 flex justify-between">
                    <div>
                        © {{ new Date().getYear() + 2000 - 100 }} GPS GmbH. Alle Rechte vorbehalten.
                    </div>
                    <div>
                        <a class="px-2" href="https://gps-stuttgart.de/agb/">AGB</a>
                        <a class="px-2" href="https://gps-stuttgart.de/datenschutz/">Datenschutz</a>
                        <a class="px-2" href="https://gps-stuttgart.de/impressum/">Impressum</a>
                        <a class="px-2" href="https://gps-stuttgart.de/agb/">Nutzungsbedingungen</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</template>

<script>
import Home from "@theme/components/Home.vue"
import Navbar from "@theme/components/Navbar.vue"
import Page from "@theme/components/Page.vue"
import Sidebar from "@theme/components/Sidebar.vue"
import { resolveSidebarItems } from "../util"

export default {
    components: { Home, Page, Sidebar, Navbar },
    data: () => ({
        isSidebarOpen: false
    }),

    computed: {
        shouldShowNavbar() {
            const { themeConfig } = this.$site
            const { frontmatter } = this.$page
            if (frontmatter.navbar === false || themeConfig.navbar === false) return false
            return (
            this.$title ||
            themeConfig.logo ||
            themeConfig.repo ||
            themeConfig.nav ||
            this.$themeLocaleConfig.nav
            )
        },

        shouldShowSidebar() {
            const { frontmatter } = this.$page
            return (
            !frontmatter.home &&
            frontmatter.sidebar !== false &&
            this.sidebarItems.length
            )
        },

        sidebarItems() {
            return resolveSidebarItems(
            this.$page,
            this.$page.regularPath,
            this.$site,
            this.$localePath
            )
        },

        pageClasses() {
            const userPageClass = this.$page.frontmatter.pageClass
            return [
            {
                "no-navbar": !this.shouldShowNavbar,
                "sidebar-open": this.isSidebarOpen,
                "no-sidebar": !this.shouldShowSidebar
            },
            userPageClass
            ]
        }
    },

    mounted() {
        this.$router.afterEach(() => {
            this.isSidebarOpen = false
        })
    },

    methods: {
        toggleSidebar(to) {
            this.isSidebarOpen = typeof to === "boolean" ? to : !this.isSidebarOpen
            this.$emit("toggle-sidebar", this.isSidebarOpen)
        },

        // side swipe
        onTouchStart(e) {
            this.touchStart = {
                x: e.changedTouches[0].clientX,
                y: e.changedTouches[0].clientY
            }
        },

        onTouchEnd(e) {
            const dx = e.changedTouches[0].clientX - this.touchStart.x
            const dy = e.changedTouches[0].clientY - this.touchStart.y
            if (Math.abs(dx) > Math.abs(dy) && Math.abs(dx) > 40) {
                if (dx > 0 && this.touchStart.x <= 80) {
                    this.toggleSidebar(true)
                } else {
                    this.toggleSidebar(false)
                }
            }
        }
    }
}
</script>
