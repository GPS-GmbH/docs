<template>
    <div>
        <div class="full-width overflow-hidden">
            <img v-if="data.heroBackground" :src="$withBase(data.heroBackground)" alt="Sicon.OS Documentation" class="hero-bg">
            <div class="home py-8" aria-labelledby="main-title">
                <header class="hero">
                    <img v-if="data.heroImage" :src="$withBase(data.heroImage)" :alt="data.heroAlt || 'hero'" />

                    <h1 v-if="data.heroText !== null" id="main-title">{{ data.heroText || $title || 'Hello' }}</h1>

                    <p class="description">
                        {{ data.tagline || $description || 'Welcome to your VuePress site' }}
                    </p>

                    <p class="action" v-if="data.actionText && data.actionLink">
                        <NavLink class="action-button" :item="actionLink" />
                    </p>
                </header>

                <div class="features" v-if="data.features && data.features.length">
                    <div class="feature" v-for="(feature, index) in data.features" :key="index">
                        <h2>{{ feature.title }}</h2>
                        <p>{{ feature.details }}</p>
                        <NavLink class="button mt-4" :item="{ link: feature.link, text: feature.linkText }" />
                    </div>
                </div>

            </div>
        </div>
        <main class="page">
            <Content class="theme-default-content" />
        </main>
    </div>
</template>

<script>
import NavLink from '@theme/components/NavLink.vue'

export default {
    components: { NavLink },

    computed: {
        data() {
            return this.$page.frontmatter
        },

        actionLink() {
            return {
                link: this.data.actionLink,
                text: this.data.actionText,
            }
        },
    },
}
</script>

<style lang="stylus">
$accentColor = #1c9a9a
.full-width
    background-color black
.home
    color white
    padding-top $navbarHeight + 3em
    max-width 960px
    margin 0px auto
    position relative
    display block
    .hero
        text-align center
        h1
            font-size 3rem
        h1, .description, .action
            margin 1.8rem auto
        .description
            max-width 35rem
            font-size 1.6rem
            line-height 1.3
            color white
        .action-button
            display inline-block
            font-size 1.2rem
            color #fff
            background-color $accentColor
            padding 0.8rem 1.6rem
            border-radius 4px
            transition background-color .1s ease
            box-sizing border-box
    .features
        padding 1.2rem 0
        margin-top 2.5rem
        display flex
        flex-wrap wrap
        align-items flex-start
        align-content stretch
        justify-content space-between
    .feature
        flex-grow 1
        flex-basis 30%
        max-width 30%
    h2
        font-size 1.4rem
        font-weight 500
        border-bottom none
        padding-bottom 0
        color white
    p
        color white
    .footer
        padding 2.5rem
        text-align center
        color white

@media (max-width: $MQMobile)
  .home
    .features
      flex-direction column
    .feature
      max-width 100%
      padding 0 2.5rem

@media (max-width: $MQMobileNarrow)
  .home
    padding-left 1.5rem
    padding-right 1.5rem
    .hero
      img
        max-height 210px
        margin 2rem auto 1.2rem
      h1
        font-size 2rem
      h1, .description, .action
        margin 1.2rem auto
      .description
        font-size 1.2rem
      .action-button
        font-size 1rem
        padding 0.6rem 1.2rem
    .feature
      h2
        font-size 1.25rem
.hero-bg
    position absolute
    object-fit cover
    width 100%
    opacity .25
    object-position center
</style>
