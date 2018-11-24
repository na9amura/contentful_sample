<template>
  <section>
    <card
      v-for="(post, i) in posts"
      :key="i"
      :title="post.fields.title"
      :id="post.sys.id"
      :date="post.sys.updatedAt"
    />
  </section>
</template>
 <script>
import Card from '~/components/Card.vue'
import * as contentful from 'contentful'

export default {
  components: {
    Card
  },
  async asyncData({ params }) {
    const client = contentful.createClient({
      space: process.env.SPACE_NAME,
      accessToken: process.env.ACCESS_TOKEN
    })
    const entries = await client.getEntries().catch(console.error)
    const res = await client.getContentType('person').catch(console.error)
    return { posts: entries.items }
  }
}
</script>